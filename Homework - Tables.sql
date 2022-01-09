-- After creating the DB 'HW-Unit_7-Data' database, lets create a 'credit_card' and 'transaction' table
-- Note we use separate lines for each field/column for the purposes of readability
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS merchant_category;
DROP TABLE IF EXISTS transactions;

CREATE TABLE card_holder (
	id INT PRIMARY KEY,
	full_name VARCHAR(30)
);

CREATE TABLE credit_card (
	card VarChar(20),
	cardholder_id INT
);

CREATE TABLE merchant (
  id INT PRIMARY KEY, 
  name VARCHAR(40),
  id_merchant_category INT
);

CREATE TABLE merchant_category (
  id INT, 
  name VARCHAR(40)
);

CREATE TABLE transactions (
  id INT,
  date timestamp,
  amount FLOAT,
  card VarChar(30),
  id_merchant BIGINT
);
