-- Insert Authors
INSERT INTO Authors (author_name) VALUES
    ('J.K. Rowling'),
    ('George Orwell'),
    ('Jane Austen');

-- Insert Books
INSERT INTO Books (title, author_id, genre, is_available) VALUES
    ('Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', true),
    ('1984', 2, 'Dystopian', true),
    ('Pride and Prejudice', 3, 'Romance', true);
