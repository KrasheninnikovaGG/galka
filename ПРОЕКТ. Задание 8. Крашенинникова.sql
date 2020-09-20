/* 8. Создать два сложных представления (с джойном) */
CREATE VIEW V_SCORE_1 AS
SELECT credit_card_number_no, discipline_id, score_pct
FROM SCORE s
INNER JOIN STUDENT st
ON st.student_nm = s.student_nm;

CREATE VIEW V_SCORE_2 AS
SELECT credit_card_number_no, discipline_nm, score_pct
FROM V_SCORE_1 v
INNER JOIN DISCIPLINE d
ON d.discipline_id = v.discipline_id;