DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE subject_id IN (SELECT id FROM subject WHERE grade>=4));
DELETE FROM student WHERE id IN (SELECT student_id FROM mark GROUP BY student_id HAVING min(mark)<4);
DELETE FROM payment WHERE name='DAILY';
DELETE FROM mark WHERE mark<7;


Delete all students with grade more than 4 and all relationships with this student;
Delete students who have at least one mark less than 4;
Delete “Daily” payment type and all relationships with this type.
    Delete All marks less than 7