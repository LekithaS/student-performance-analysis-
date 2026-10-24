
-- ============================================
-- PROJECT: Student Database Analysis
-- DATABASE: SQLite
-- DATA: Fictional sample student records
-- ============================================


-- QUERY 1: Display all students
SELECT *
FROM students;


-- QUERY 2: Find students scoring above 80
SELECT name, department, marks
FROM students
WHERE marks > 80;


-- QUERY 3: Sort students by marks (highest first)
SELECT name, department, marks
FROM students
ORDER BY marks DESC;


-- QUERY 4: Calculate the overall average marks
SELECT AVG(marks) AS average_marks
FROM students;


-- QUERY 5: Analyze performance by department
SELECT
    department,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks
FROM students
GROUP BY department
ORDER BY average_marks DESC;


-- QUERY 6: Find departments with average marks above 80
SELECT
    department,
    AVG(marks) AS average_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 80;


-- QUERY 7: Join students and their courses
SELECT
    s.name,
    s.department,
    c.course_name,
    s.marks
FROM students AS s
INNER JOIN courses AS c
    ON s.student_id = c.student_id;


-- EXTRA QUERY: Count students in each department
SELECT
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department
ORDER BY total_students DESC;


-- EXTRA QUERY: Find the lowest marks in each department
SELECT
    department,
    MIN(marks) AS lowest_marks
FROM students
GROUP BY department;
