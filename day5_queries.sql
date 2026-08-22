USE bank;
CREATE TABLE accounts(
     id SERIAL PRIMARY KEY,
     name VARCHAR(50),
     balance INT
);

INSERT INTO accounts (name,balance) VALUES
('Raj', 10000),
('Priya' , 5000);

START TRANSACTION;
SET SQL_SAFE_UPDATES = 0;
UPDATE accounts
SET balance =balance - 3000
WHERE name ='Raj';

UPDATE accounts
SET balance = balance + 3000
WHERE name = 'Priya';

-- check balance manually here:
SELECT * FROM accounts;

-- If correct:
COMMIT;

-- IF wrong:
-- ROLLBACK;

SET SQL_SAFE_UPDATES=0;

-- step 1 : start transacion
START TRANSACTION;

-- step 2 : Create SAVEPOINT for Raj -> Amit Transfer
SAVEPOINT raj_to_priya;
SELECT * FROM accounts;

-- step3 ; raj -> priya transfer
UPDATE accounts
SET balance = balance - 3000
WHERE name ='Raj';

UPDATE accounts
SET balance = balance + 300
WHERE name = 'Priya';


-- Step4 ; Create savepoint for Raj -> Amit Transfer
SAVEPOINT raj_to_amit;
SELECT * FROM accounts;

-- step 5 : Raj -> Amit transfer (will fail Amit does not exist)
UPDATE accounts
SET balance = balance- 2000
WHERE name = 'Raj';

UPDATE accounts
SET balance = balance + 2000
WHERE name ='Amit';

ROLLBACK TO raj_to_amit;
SELECT * FROM accounts;

COMMIT;


SET SQL_SAFE_UPDATE = 1;