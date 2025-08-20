-- Which student borrowed which book
SELECT s.name AS student_name, b.title AS book_title
FROM borrow br
JOIN students s ON br.student_id = s.student_id
JOIN books b ON br.book_id = b.book_id;

-- List all books borrowed with librarian name
SELECT b.title, l.name AS librarian_name
FROM borrow br
JOIN books b ON br.book_id = b.book_id
JOIN librarians l ON br.librarian_id = l.librarian_id;

-- Borrow history of a student
SELECT s.name, b.title, br.borrow_date, br.return_date
FROM borrow br
JOIN students s ON br.student_id = s.student_id
JOIN books b ON br.book_id = b.book_id
WHERE s.student_id = 1;

-- Count total books borrowed by each student
SELECT s.name, COUNT(*) AS total_borrowed
FROM borrow br
JOIN students s ON br.student_id = s.student_id
GROUP BY s.student_id;

-- Most borrowed book
SELECT b.title, COUNT(*) AS times_borrowed
FROM borrow br
JOIN books b ON br.book_id = b.book_id
GROUP BY b.book_id
ORDER BY times_borrowed DESC
LIMIT 1;

-- Average experience of librarians
SELECT AVG(experience_years) AS avg_experience FROM librarians;

-- Total number of students
SELECT COUNT(*) AS total_students FROM students;

-- Min and max borrow dates for a specific book
SELECT MIN(borrow_date) AS earliest, MAX(borrow_date) AS latest
FROM borrow
WHERE book_id = 1;