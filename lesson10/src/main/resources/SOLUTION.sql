SELECT *FROM subject WHERE id=(SELECT subject_id FROM mark GROUP BY subject_id HAVING avg(mark) >(SELECT avg(mark) FROM mark));
SELECT *FROM student WHERE id=(SELECT student_id FROM payment GROUP BY student_id HAVING avg(amount) <(SELECT AVG(amount) FROM payment));




