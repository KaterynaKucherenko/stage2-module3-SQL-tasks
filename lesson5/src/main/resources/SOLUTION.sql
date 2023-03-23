SELECT * FROM payment WHERE amount>=500;
SELECT * FROM student WHERE (YEAR(CURDATE())-YEAR(birthday) >20);
SELECT * FROM student WHERE groupnumber=10 AND (YEAR(CURDATE())-YEAR(birthday)) <20;
SELECT * FROM student WHERE name LIKE 'Mike%' OR groupnumber = 4 OR groupnumber=5 OR groupnumber = 6;
SELECT * FROM payment WHERE timestampdiff(MONTH,  payment_date , '20230324')<9;
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE (name LIKE 'Roxi%' AND groupnumber = 4) OR (name LIKE 'Tallie%' AND groupnumber = 9 );




