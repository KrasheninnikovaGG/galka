/* 7. Создать по 1 представлению на каждую таблицу. В представлениях должен быть реализован механизм маскировки личных
   (секретных) данных и скрытия технических полей (суррогатных ключей и т. п.) */
CREATE VIEW V_TEACHER AS
SELECT teacher_nm, department_nm,academic_degree_desc, academic_title_desc
FROM TEACHER;

CREATE VIEW V_TEST AS
SELECT test_desc, number_of_tasks_num, max_score_pct
FROM TEST;

CREATE VIEW V_PROJECT AS
SELECT project_nm, sections_of_the_project_num, preparation_time_hr, max_score_pct
FROM PROJECT;

CREATE VIEW V_ORAL_EXAMINATION AS
SELECT questions_num, tickets_num, max_score_pct
FROM ORAL_EXAMINATION;

CREATE VIEW V_DISCIPLINE AS
SELECT discipline_no, discipline_nm, direction_of_training_nm, control_type_code
FROM DISCIPLINE;

CREATE VIEW V_GROUPE AS
SELECT *
FROM GROUPE;

CREATE VIEW V_GROUP_Х_DISCIPLINE AS
SELECT *
FROM GROUP_Х_DISCIPLINE;

CREATE VIEW V_STUDENT AS
SELECT student_nm, credit_card_number_no, group_no
FROM STUDENT;

CREATE VIEW V_SCORE AS
SELECT discipline_id, score_pct
FROM SCORE;