ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;
ALTER TABLE mark ALTER COLUMN student_id SET NOT NULL;
ALTER TABLE mark ALTER COLUMN subject_id SET NOT NULL;
ALTER TABLE mark ADD CONSTRAINT chk_mark_range CHECK (mark BETWEEN 1 AND 10);
ALTER TABLE subject ADD CONSTRAINT chk_grade_range CHECK (grade BETWEEN 1 AND 5);
ALTER TABLE paymenttype ADD CONSTRAINT unique_paymenttype_name UNIQUE(name);
ALTER TABLE payment ALTER COLUMN type_id SET NOT NULL;
ALTER TABLE payment ALTER COLUMN amount SET NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date SET NOT NULL;
