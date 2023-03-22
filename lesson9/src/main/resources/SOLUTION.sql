SELECT * FROM STUDENT WHERE id=(SELECT student_id FROM mark GROUP BY student_id HAVING avg(mark)>8);
SELECT s.id, s.name FROM student AS s JOIN mark AS m ON s.id=m.student_id GROUP BY (s.id, s.name) HAVING min(m.mark)>7;
SELECT id, name FROM student JOIN payment ON student.id=payment.student_id GROUP BY (student.id, student.name) WHERE payment.payment_date BEETWEEN '2019-01-01' AND '2019-12-31' GROUP BY student.id HAVING COUNT(payment.amount) >=2;

