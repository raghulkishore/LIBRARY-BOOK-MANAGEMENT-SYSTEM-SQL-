-- Insert students
INSERT INTO students (name, email, department, gender) VALUES
('Ravi Kumar', 'ravi@example.com', 'CSE', 'M'),
('Anitha Raj', 'anitha@example.com', 'ECE', 'F'),
('Suresh Das', 'suresh@example.com', 'IT', 'M');

-- Insert books
INSERT INTO books (title, author, category, available_copies) VALUES
('C Programming', 'Dennis Ritchie', 'Programming', 5),
('Digital Circuits', 'Morris Mano', 'Electronics', 3),
('Data Structures', 'Mark Allen', 'CS', 4);

-- Insert librarians
INSERT INTO librarians (name, experience_years) VALUES
('Lakshmi Devi', 6),
('Arun M.', 3),
('John Paul', 5);

-- Insert borrow records
INSERT INTO borrow (student_id, book_id, librarian_id, borrow_date, return_date) VALUES
(1, 1, 1, '2025-07-01', NULL),
(2, 2, 2, '2025-07-01', '2025-07-10'),
(3, 3, 1, '2025-07-02', NULL);