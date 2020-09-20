/* 6. Написать CRUD-запрос (подсказка 4 запроса) к двум любым таблицам БД */
SELECT teacher_nm
FROM TEACHER
WHERE experience_cnt > 10;

INSERT INTO TEACHER VALUES ('Янютин Егор Андреевич','высшей математики', 13, 'канд. пед. наук','доцент');

UPDATE TEACHER
SET experience_cnt = 16
WHERE teacher_nm = 'Янютин Егор Андреевич';

DELETE
FROM TEACHER
WHERE teacher_nm = 'Янютин Егор Андреевич';

SELECT group_no
FROM GROUPE
WHERE course_num = 1;

INSERT INTO GROUPE VALUES ('ГМУ-81', 2, 'Социально-гуманитарный', 21);

UPDATE GROUPE
SET faculty_nm = 'Экономический'
WHERE group_no = 'ГМУ-81';

DELETE
FROM GROUPE
WHERE group_no = 'ГМУ-81';