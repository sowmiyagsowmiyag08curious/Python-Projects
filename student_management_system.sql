-- Create tables
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert records
INSERT INTO students VALUES (1, 'Anu', 'anu@gmail.com', 20);
INSERT INTO courses VALUES (101, 'Python');
INSERT INTO enrollments VALUES (1, 1, 101);

-- Select records
SELECT * FROM students;

-- Update record
UPDATE students
SET age = 21
WHERE student_id = 1;

-- Delete record
DELETE FROM students
WHERE student_id = 1;

-- Join example
SELECT students.name, courses.course_name
FROM students
JOIN enrollments ON students.student_id = enrollments.student_id
JOIN courses ON courses.course_id = enrollments.course_id;
