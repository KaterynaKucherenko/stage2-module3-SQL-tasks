SELECT * FROM STUDENT WHERE id IN (SELECT student_id FROM mark GROUP BY student_id HAVING avg(mark)>8);
SELECT s.id, s.name FROM student AS s JOIN mark AS m ON s.id=m.student_id GROUP BY (s.id, s.name) HAVING min(m.mark)>7;
SELECT s.id, s.name FROM student AS s JOIN payment AS p ON s.id=p.student_id WHERE p.payment_date BETWEEN '2019-01-01' AND '2019-12-31' GROUP BY (s.id, s.name) HAVING COUNT(p.amount) >2;

