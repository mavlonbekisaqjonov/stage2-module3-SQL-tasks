INSERT INTO student (name, birthday, groupnumber) VALUES ('John','2000-01-01',1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris','2000-01-01',1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl','2000-01-01',1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver','2000-01-01',2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James','2000-01-01',2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas','2000-01-01',2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry','2000-01-01',2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob','2000-01-01',3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan','2000-01-01',3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Ethan','2000-01-01',4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Mia','2000-01-01',4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Ava','2000-01-01',5);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Liam','2000-01-01',5);
INSERT INTO subject (name, description, grade) VALUES ('Art','Subject: Art',1);
INSERT INTO subject (name, description, grade) VALUES ('Music','Subject: Music',1);
INSERT INTO subject (name, description, grade) VALUES ('Geography','Subject: Geography',2);
INSERT INTO subject (name, description, grade) VALUES ('History','Subject: History',2);
INSERT INTO subject (name, description, grade) VALUES ('PE','Subject: PE',3);
INSERT INTO subject (name, description, grade) VALUES ('Math','Subject: Math',3);
INSERT INTO subject (name, description, grade) VALUES ('Science','Subject: Science',4);
INSERT INTO subject (name, description, grade) VALUES ('IT','Subject: IT',4);
INSERT INTO subject (name, description, grade) VALUES ('Literature','Subject: Literature',5);
INSERT INTO subject (name, description, grade) VALUES ('Economics','Subject: Economics',5);
INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='WEEKLY'),100.00,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name='John'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='MONTHLY'),150.00,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name='Oliver'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='WEEKLY'),120.00,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name='Henry'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='DAILY'),80.00,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name='James'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='MONTHLY'),130.00,CURRENT_TIMESTAMP,(SELECT id FROM student WHERE name='Chris'));
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Chris'),(SELECT id FROM subject WHERE name='Art'),8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Oliver'),(SELECT id FROM subject WHERE name='History'),5);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='James'),(SELECT id FROM subject WHERE name='Geography'),9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Jacob'),(SELECT id FROM subject WHERE name='Math'),4);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Logan'),(SELECT id FROM subject WHERE name='PE'),9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Ethan'),(SELECT id FROM subject WHERE name='Science'),7);
