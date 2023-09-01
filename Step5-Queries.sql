-- List all available books
SELECT b.title, a.author_name
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
WHERE b.is_available = true;