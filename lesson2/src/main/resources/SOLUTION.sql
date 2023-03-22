INSERT INTO student (name, birthday, groupnumber) VALUES ( 'John', CURRENT_DATE(), 1);
INSERT INTO student (name, birthday, groupnumber) VALUES('Chris', CURRENT_DATE(), 1);
 ('Carl',CURRENT_DATE(), 1),
('Oliver',CURRENT_DATE(), 2),
('James',CURRENT_DATE(), 2),
('Lucas', CURRENT_DATE(),2),
('Henry', CURRENT_DATE(),2),
('Jacob', CURRENT_DATE(),3),
('Logan', CURRENT_DATE(),3),
('Angela',CURRENT_DATE(), 4),
('Troy',CURRENT_DATE(), 4),
('Opal', CURRENT_DATE(),4),
('Victoria',CURRENT_DATE(), 4),
('Dayan',CURRENT_DATE(), 5),
('Run',CURRENT_DATE(), 5),
('Elisabeth',CURRENT_DATE(), 5),
('Andrew',CURRENT_DATE(), 5);
INSERT INTO subject (name, description, grade) VALUES
('Art', 'important subject', 1),
('Music','important subject', 1),
('Geography','important subject', 2),
('History','important subject', 2),
('PE', 'important subject',3),
('Math','important subject', 3),
('Science',"important subject", 4),
('IT', 'important subject',4),
('Pharmacy','important subject', 5),
('Anatomy', 'important subject',5);
INSERT INTO paymenttype (name) VALUES
('DAILY'),
 ('WEEKLY'),
 ('MONTHLY');
INSERT INTO payment (type_id,amount ,payment_date,student_id) VALUES
((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'John')),
((SELECT id FROM paymenttype WHERE name = 'MONTHLY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'Oliver')),
((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'Henry')),
((SELECT id FROM paymenttype WHERE name = 'DAILY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'James')),
((SELECT id FROM paymenttype WHERE name = 'WEEKLY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'Troy')),
((SELECT id FROM paymenttype WHERE name = 'DAILY'), 1.1, NOW(), (SELECT id FROM student WHERE name = 'Andrew'));
INSERT INTO mark (student_id,  subject_id, mark) VALUES
((SELECT id FROM student WHERE name = 'Chris'), (SELECT id FROM subject WHERE name = 'Art' ), 8),
((SELECT id FROM student WHERE name = 'Oliver'), (SELECT id FROM subject WHERE name = 'History' ), 5),
((SELECT id FROM student WHERE name = 'James'), (SELECT id FROM subject WHERE name = 'Geography' ), 9),
((SELECT id FROM student WHERE name = 'Jacob'), (SELECT id FROM subject WHERE name = 'Math' ), 4),
((SELECT id FROM student WHERE name = 'Logan'), (SELECT id FROM subject WHERE name = 'PE' ), 9),
((SELECT id FROM student WHERE name = 'Troy'), (SELECT id FROM subject WHERE name = 'Anatomy' ), 3),
((SELECT id FROM student WHERE name = 'Andrew'), (SELECT id FROM subject WHERE name = 'Pharmacy' ), 6);
