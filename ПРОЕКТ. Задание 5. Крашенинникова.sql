/* 5. Сформулировать 5 смысловых запросов к БД. Написать их на SQL. */

/* 1) Найти всех студентов, которые получили оценку "хорошо" за "Проект-1", если оценка "хорошо" ставится тем,
   кто набрал не менее 65%, но менее 85% от максимального балла. */
SELECT student_nm
FROM
    (SELECT *
    FROM SCORE s
    INNER JOIN DISCIPLINE d
    ON d.discipline_id = s.discipline_id
    WHERE control_type_code = 'Проект-1') AS f
INNER JOIN PROJECT p
ON p.control_type_code = f.control_type_code
WHERE score_pct % max_score_pct>=65 AND score_pct % max_score_pct < 85;

/* 2) Найти всех студентов, у которых преподаёт Ивванов Иван Иванович */
SELECT student_nm
FROM
    (SELECT student_nm, s.group_no, gd.discipline_id
    FROM STUDENT s
    INNER JOIN GROUP_Х_DISCIPLINE gd
    ON s.group_no = gd.group_no) a
INNER JOIN
    (SELECT discipline_id
    FROM DISCIPLINE
    WHERE teacher_nm = 'Иванов Иван Иванович') b
ON a.discipline_id = b.discipline_id;

/* 3) Кто из преподавателей ведёт занятия у студентов-договорников? */
SELECT DISTINCT teacher_nm
FROM
    (SELECT DISTINCT teacher_nm, group_no
    FROM DISCIPLINE d
    INNER JOIN GROUP_Х_DISCIPLINE gd
    ON d.discipline_id = gd.discipline_id) a
INNER JOIN
    (SELECT group_no
    FROM STUDENT
    WHERE financial_basis_desc = 'договор') b
ON a.group_no = b.group_no;

/* 4) Сколько студентов получили оценку по тестам? */
SELECT count(student_nm)
FROM SCORE s
INNER JOIN
    (SELECT *
    FROM DISCIPLINE
    WHERE control_type_code LIKE 'Т%') d
ON s.discipline_id = d.discipline_id;

/* 5) Подсчитать количество студентов каждого факультета */
SELECT DISTINCT faculty_nm, sum(number_of_students_num) OVER (PARTITION BY faculty_nm)
FROM GROUPE;