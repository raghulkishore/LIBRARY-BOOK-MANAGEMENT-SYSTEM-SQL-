-- Add new entries
INSERT INTO students (name, email, department, gender) VALUES ('Priya Sharma', 'priya@example.com', 'EEE', 'F');

INSERT INTO books (title, author, category, available_copies) VALUES ('Operating Systems', 'Galvin', 'CS', 2);

INSERT INTO librarians (name, experience_years) VALUES ('Kavitha S.', 4);

INSERT INTO borrow (student_id, book_id, librarian_id) VALUES (1, 2, 3);

-- Update book copies
UPDATE books SET available_copies = available_copies - 1 WHERE book_id = 2;

-- Delete a borrow record
DELETE FROM borrow WHERE borrow_id = 2;

-- View all students
SELECT * FROM students;

-- View all books
SELECT * FROM books;