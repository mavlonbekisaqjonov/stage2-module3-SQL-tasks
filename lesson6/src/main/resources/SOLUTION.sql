SELECT p.* FROM payment p JOIN paymenttype pt ON p.type_id = pt.id WHERE pt.name = 'MONTHLY';
SELECT m.* FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.name = 'Art';
SELECT DISTINCT s.* FROM student s JOIN payment p ON s.id = p.student_id JOIN paymenttype pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';
SELECT DISTINCT s.* FROM student s JOIN mark m ON s.id = m.student_id JOIN subject sub ON m.subject_id = sub.id WHERE sub.name = 'Math';
