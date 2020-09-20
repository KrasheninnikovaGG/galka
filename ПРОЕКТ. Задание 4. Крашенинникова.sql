/* 4. Заполнить БД даннными (~100 записей в сумме, по 5-10 записей в каждую таблицу) */
TRUNCATE TABLE TEACHER CASCADE;
INSERT INTO TEACHER VALUES ('Иванов Иван Иванович','высшей математики', 5, 'канд. пед. наук','нет');
INSERT INTO TEACHER VALUES ('Петров Петр Петрович','прикладной математики', 12,'канд. физ.-мат. наук','нет');
INSERT INTO TEACHER VALUES ('Маринина Мария Марковна','высшей математики', 3, 'нет','нет');
INSERT INTO TEACHER VALUES ('Светлова Светлана Игоревна','прикладной математики', 17,'д-р пед. наук','профессор');
INSERT INTO TEACHER VALUES ('Сергеев Сергей Сергеевич','прикладной математики', 10, 'канд. физ.-мат. наук','доцент');
INSERT INTO TEACHER VALUES ('Анютина Анна Васильевна','высшей математики', 20, 'д-р физ.-мат. наук','профессор');

TRUNCATE TABLE TEST CASCADE;
INSERT INTO TEST VALUES ('Тест-1','Дифференциальные уравнения. Ряды', 20, 50);
INSERT INTO TEST VALUES ('Тест-2','Дифференциальная геометрия', 15, 40);
INSERT INTO TEST VALUES ('Тест-3','Алгебраические расширения полей', 12, 35);
INSERT INTO TEST VALUES ('Тест-4','Основные средства математической обработки информации', 20, 55);
INSERT INTO TEST VALUES ('Тест-5','Операционное исчисление', 18, 40);

TRUNCATE TABLE PROJECT CASCADE;
INSERT INTO PROJECT VALUES ('Проект-1','Финансовый анализ', 5, 30, 100);
INSERT INTO PROJECT VALUES ('Проект-2','Теория графов', 6, 20, 80);
INSERT INTO PROJECT VALUES ('Проект-3','Системы массового обслуживания', 4, 25, 90);
INSERT INTO PROJECT VALUES ('Проект-4','Корреляционный анализ', 5, 20, 80);
INSERT INTO PROJECT VALUES ('Проект-5','Динамическое программирование', 4, 20, 100);

TRUNCATE TABLE ORAL_EXAMINATION CASCADE;
INSERT INTO ORAL_EXAMINATION VALUES ('Устный экзамен-1', 30, 3, 50);
INSERT INTO ORAL_EXAMINATION VALUES ('Устный экзамен-2', 25, 2, 70);
INSERT INTO ORAL_EXAMINATION VALUES ('Устный экзамен-3', 20, 2, 60);
INSERT INTO ORAL_EXAMINATION VALUES ('Устный экзамен-4', 30, 3, 50);
INSERT INTO ORAL_EXAMINATION VALUES ('Устный экзамен-5', 25, 2, 70);


TRUNCATE TABLE DISCIPLINE CASCADE;
INSERT INTO DISCIPLINE VALUES (1,'Б1.О.13.03','Математический анализ',
            'Педагогическое образование', 'Иванов Иван Иванович','Устный экзамен-2');
INSERT INTO DISCIPLINE VALUES (2,'Б1.О.13.01','Алгебра',
            'Педагогическое образование', 'Светлова Светлана Игоревна','Тест-3');
INSERT INTO DISCIPLINE VALUES (3,'Б1.О.13.02','Геометрия',
            'Педагогическое образование', 'Светлова Светлана Игоревна','Тест-2');
INSERT INTO DISCIPLINE VALUES (4,'Б1.О.13.06','Теория вероятностей и математическая статистика',
            'Педагогическое образование', 'Петров Петр Петрович','Проект-4');
INSERT INTO DISCIPLINE VALUES (5,'Б1.О.11','Высшая математика',
            'Строительство', 'Иванов Иван Иванович','Тест-1');
INSERT INTO DISCIPLINE VALUES (6,'Б1.Б.10','Основы математический обравботки информации',
            'Педагогическое образование', 'Маринина Мария Марковна','Тест-4');
INSERT INTO DISCIPLINE VALUES (7,'Б1.О.21','Дискретная математика',
            'Прикладная информатика', 'Анютина Анна Васильевна','Проект-2');
INSERT INTO DISCIPLINE VALUES (8,'Б1.В.ОД.10','Уравнения математической физики',
            'Педагогическое образование', 'Сергеев Сергей Сергеевич','Устный экзамен-1');
INSERT INTO DISCIPLINE VALUES (9,'Б1.В.01','Методы математического моделирования',
            'Экономика', 'Анютина Анна Васильевна','Проект-3');
INSERT INTO DISCIPLINE VALUES (10,'Б1.Б.22','Экономическая математика',
            'Экономика', 'Петров Петр Петрович','Проект-1');


TRUNCATE TABLE GROUPE CASCADE;
INSERT INTO GROUPE VALUES ('ФМОиИКТ-91', 1, 'Физико-математический', 10);
INSERT INTO GROUPE VALUES ('ФМОиИКТ-81', 2, 'Физико-математический', 8);
INSERT INTO GROUPE VALUES ('ПГС-91', 1, 'Политехнический институт', 12);
INSERT INTO GROUPE VALUES ('ИЗиС-91', 1, 'Политехнический институт', 9);
INSERT INTO GROUPE VALUES ('МиСБ-81', 2, 'Экономический', 10);
INSERT INTO GROUPE VALUES ('ФК-81', 2, 'Экономический', 15);
INSERT INTO GROUPE VALUES ('БУА-81', 2, 'Экономический', 13);
INSERT INTO GROUPE VALUES ('ПИ-81', 2, 'Физико-математический', 20);
INSERT INTO GROUPE VALUES ('ИиОН-91', 1, 'Социально-гуманитарный', 15);
INSERT INTO GROUPE VALUES ('МиФ-71', 3, 'Физико-математический', 14);

TRUNCATE TABLE GROUP_Х_DISCIPLINE CASCADE;
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ФМОиИКТ-91', 1);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ФМОиИКТ-81', 2);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ФМОиИКТ-81', 3);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ПГС-91', 5);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ИЗиС-91', 5);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('МиСБ-81', 9);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ФК-81', 9);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ФК-81', 10);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('БУА-81', 9);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('БУА-81', 10);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ПИ-81', 7);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('ИиОН-91', 6);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('МиФ-71', 4);
INSERT INTO GROUP_Х_DISCIPLINE VALUES ('МиФ-71', 8);

TRUNCATE TABLE STUDENT CASCADE;
INSERT INTO STUDENT VALUES ('Будяк Регина Алексеевна', '1342687','ФМОиИКТ-91','бюджет', '27.03.2001');
INSERT INTO STUDENT VALUES ('Вуквувье Ксения Петровна', '2365260','ПГС-91','бюджет', '27.01.1998');
INSERT INTO STUDENT VALUES ('Громов Даниил Сергеевич', '1342690','ФМОиИКТ-91','бюджет', '14.11.2000');
INSERT INTO STUDENT VALUES ('Зырянов Владислав Игоревич', '1342692','ФМОиИКТ-91','договор', '11.05.2001');
INSERT INTO STUDENT VALUES ('Каширин Антон Антонович', '2365259','ПГС-91','бюджет', '27.07.2001');
INSERT INTO STUDENT VALUES ('Копытов Сергей Максимович', '1584365','ПИ-81','бюджет', '15.05.1999');
INSERT INTO STUDENT VALUES ('Коротаев Сергей Антонович', '2178034','ИиОН-91','договор', '25.05.2000');
INSERT INTO STUDENT VALUES ('Кравенко Татьяна Эдуардовна', '1235689','ФК-81','договор', '15.03.2000');
INSERT INTO STUDENT VALUES ('Лукашенко Елизавета Павловна', '1235693','ФК-81','бюджет', '30.05.2000');
INSERT INTO STUDENT VALUES ('Недвига Дмитрий Евгеньевич', '1005643','МиФ-71','бюджет', '22.09.1997');

TRUNCATE TABLE SCORE CASCADE;
INSERT INTO SCORE VALUES ('Будяк Регина Алексеевна', 1, 40);
INSERT INTO SCORE VALUES ('Вуквувье Ксения Петровна', 5, 40);
INSERT INTO SCORE VALUES ('Громов Даниил Сергеевич', 1, 65);
INSERT INTO SCORE VALUES ('Зырянов Владислав Игоревич', 1, 30);
INSERT INTO SCORE VALUES ('Каширин Антон Антонович', 5, 24);
INSERT INTO SCORE VALUES ('Копытов Сергей Максимович', 7, 70);
INSERT INTO SCORE VALUES ('Коротаев Сергей Антонович', 6, 45);
INSERT INTO SCORE VALUES ('Кравенко Татьяна Эдуардовна', 9, 80);
INSERT INTO SCORE VALUES ('Кравенко Татьяна Эдуардовна', 10, 90);
INSERT INTO SCORE VALUES ('Лукашенко Елизавета Павловна', 9, 50);
INSERT INTO SCORE VALUES ('Лукашенко Елизавета Павловна', 10, 70);
INSERT INTO SCORE VALUES ('Недвига Дмитрий Евгеньевич', 4, 65);
INSERT INTO SCORE VALUES ('Недвига Дмитрий Евгеньевич', 8, 30);
