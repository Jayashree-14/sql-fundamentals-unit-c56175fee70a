-- 1. Insert the members
INSERT INTO members (name, email) VALUES
    ('Alice Smith', 'alice@example.com'),
    ('Bob Jones', 'bob@example.com'),
    ('Carol White', 'carol@example.com');

-- 2. Insert the loans
INSERT INTO loans (member_id, book_title, loan_date, return_date) VALUES
    (1, 'The Great Gatsby', '2025-04-01', NULL),
    (2, '1984', '2025-03-15', '2025-03-30');

-- 3. List all members
SELECT id, name, email
FROM members
ORDER BY id;

-- 4. List books still on loan with borrower
SELECT loans.book_title, members.name
FROM loans
JOIN members ON loans.member_id = members.id
WHERE loans.return_date IS NULL
ORDER BY loans.id;