/* 3. Написать DDL-скрипты для создания пустой БД */
DROP SCHEMA IF EXISTS project_Krasheninnikova CASCADE ;

CREATE SCHEMA project_Krasheninnikova;

SELECT *
FROM information_schema.tables
WHERE table_schema = 'project_Krasheninnikova';

SET search_path = project_Krasheninnikova, public;

DROP TABLE IF EXISTS TEACHER CASCADE ;
CREATE TABLE TEACHER (
        teacher_nm VARCHAR(100) NOT NULL  UNIQUE  PRIMARY KEY,
        department_nm  VARCHAR(50) NOT NULL,
        experience_cnt  INTEGER  NOT NULL,
        academic_degree_desc  VARCHAR(50),
        academic_title_desc  VARCHAR(20));

DROP TABLE IF EXISTS TEST CASCADE ;
CREATE TABLE TEST (
        control_type_code  VARCHAR(20) NOT NULL  UNIQUE  PRIMARY KEY,
        test_desc  VARCHAR(100) NOT NULL,
        number_of_tasks_num  INTEGER  NOT NULL,
        max_score_pct INTEGER  NOT NULL);

DROP TABLE IF EXISTS PROJECT  CASCADE ;
CREATE TABLE PROJECT  (
        control_type_code  VARCHAR(20) NOT NULL  UNIQUE  PRIMARY KEY,
        project_nm  VARCHAR(100) NOT NULL,
        sections_of_the_project_num  SMALLINT  NOT NULL,
        preparation_time_hr  INTEGER  NOT NULL,
        max_score_pct INTEGER  NOT NULL);

DROP TABLE IF EXISTS ORAL_EXAMINATION  CASCADE ;
CREATE TABLE ORAL_EXAMINATION  (
        control_type_code  VARCHAR(20) NOT NULL  UNIQUE  PRIMARY KEY,
        questions_num  INTEGER NOT NULL,
        tickets_num  SMALLINT  NOT NULL,
        max_score_pct INTEGER  NOT NULL);

DROP TABLE IF EXISTS DISCIPLINE CASCADE ;
CREATE TABLE DISCIPLINE (
        discipline_id INTEGER  NOT NULL  UNIQUE  PRIMARY KEY,
        discipline_no VARCHAR(20) NOT NULL  UNIQUE,
        discipline_nm VARCHAR(100) NOT NULL,
        direction_of_training_nm VARCHAR(50) NOT NULL,
        teacher_nm  VARCHAR(100) NOT NULL REFERENCES TEACHER,
        control_type_code  VARCHAR(20) NOT NULL);

DROP TABLE IF EXISTS GROUPE CASCADE ;
CREATE TABLE GROUPE (
        group_no VARCHAR(20)  NOT NULL  UNIQUE  PRIMARY KEY,
        course_num  SMALLINT  NOT NULL,
        faculty_nm  VARCHAR(50)  NOT NULL,
        number_of_students_num  INTEGER  NOT NULL);

DROP TABLE IF EXISTS GROUP_Х_DISCIPLINE CASCADE ;
CREATE TABLE GROUP_Х_DISCIPLINE (
        group_no VARCHAR(20)  NOT NULL REFERENCES GROUPE,
        discipline_id  INTEGER  NOT NULL  REFERENCES DISCIPLINE,
        PRIMARY KEY (group_no, discipline_id));

DROP TABLE IF EXISTS STUDENT CASCADE ;
CREATE TABLE STUDENT (
        student_nm VARCHAR(100) NOT NULL UNIQUE  PRIMARY KEY,
        credit_card_number_no VARCHAR(20) NOT NULL UNIQUE,
        group_no  VARCHAR(20)  NOT NULL REFERENCES GROUPE,
        financial_basis_desc  VARCHAR(20) NOT NULL,
        date_of_birth_dt  DATE NOT NULL);

DROP TABLE IF EXISTS SCORE CASCADE ;
CREATE TABLE SCORE (
        student_nm VARCHAR(100) NOT NULL REFERENCES STUDENT,
        discipline_id  INTEGER  NOT NULL REFERENCES  DISCIPLINE,
        score_pct  INTEGER,
        PRIMARY KEY (student_nm, discipline_id));