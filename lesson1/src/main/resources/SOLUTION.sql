CREATE TABLE Student
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL
);
CREATE TABLE Subject
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(250),
description VARCHAR(255),
grade INT NOT NULL
);
CREATE TABLE PaymentType
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100)
);
CREATE TABLE Payment
(
 id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 type_id BIGINT NOT NULL,
 amount DECIMAL NOT NULL,
 student_id BIGINT NOT NULL,
  payment_date DATETIME NOT NULL,
 foreign key (type_id) references PaymentType(id),
 foreign key (student_id) references Student(id)
);
CREATE TABLE Mark
(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id BIGINT NOT NULL,
  foreign key (student_id) references Student(id),
  subject_id BIGINT NOT NULL,
  foreign key (subject_id) references Subject (id),
  mark INT NOT NULL
);
