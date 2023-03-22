CREATE TABLE Student
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    birthday DATE NOT NULL,
    group INT NOT NULL
);
CREATE TABLE Subject
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
description VARCHAR(100),
grade INT NOT NULL
);
CREATE TABLE PaymentType
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100)
);
CREATE TABLE Payment
(
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
 type_id BIGINT NOT NULL,
 foreign key (type_id) references PaymentType(id),
 amount DECIMAL NOT NULL,
 student_id BIGINT NOT NULL,
 foreign key (student_id) references Student(id),
 payment_date DATETIME NOT NULL
);
CREATE TABLE Mark
(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  student_id BIGINT NOT NULL,
  foreign key (student_id) references Student(id),
  subject_id BIGINT NOT NULL,
  foreign key (subject_id) references Subject (id),
  mark INT NOT NULL
);
