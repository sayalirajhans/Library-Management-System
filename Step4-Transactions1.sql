-- Book return
UPDATE Transactions
SET return_date = CURDATE()
WHERE book_id = 2 AND user_id = 101;