SELECT MAX(birthday) AS youngest_birthday FROM student;
SELECT MIN(payment_date) AS earliest_payment_date FROM payment;
SELECT AVG(m.mark) AS average_math_mark FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.name = 'Math';
SELECT MIN(p.amount) AS min_weekly_payment FROM payment p JOIN paymenttype pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';
