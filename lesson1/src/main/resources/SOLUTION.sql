CREATE TABLE Student (id BIGINT PRIMARY KEY, name VARCHAR(255), birthday DATE, "group" INT);
CREATE TABLE Subject (id BIGINT PRIMARY KEY, name VARCHAR(255), description VARCHAR(255), grade INT);
CREATE TABLE PaymentType (id BIGINT PRIMARY KEY, name VARCHAR(255));
CREATE TABLE Payment (id BIGINT PRIMARY KEY, type_id BIGINT, amount DECIMAL(10,2), student_id BIGINT, payment_date TIMESTAMP, CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES PaymentType(id), CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES Student(id));
CREATE TABLE Mark (id BIGINT PRIMARY KEY, student_id BIGINT, subject_id BIGINT, mark INT, CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES Student(id), CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES Subject(id));


