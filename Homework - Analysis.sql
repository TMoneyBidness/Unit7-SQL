-- 1. We can join them all by linking their ids and payment cards
-- 2. The number of transactions that are less than $2.00 per cardholder

select Count(*) from transactions
where amount<2;
-- This total = 350. 

select card, count(*) AS "Transaction_count"
from transactions
where amount<2
Group by card
ORDER BY "Transaction_count" DESC;

--VIEWS
create view morning_trans as 
SELECT *
FROM transactions AS t
WHERE date_part('hour', t.date) >= 7 AND date_part('hour', t.date) <= 9
ORDER BY amount DESC
LIMIT 100;


-- Top 5 merchants prone to being hacked using small transactions
create view top_5 as 
select name, count(*)
from merchant as merchant
join transactions as transactions on merchant.id = transactions.id_merchant
where amount < 2.00 
group by name
order by count(*) desc;

-- Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
-- It appears that several cards have multiple extrations.


--What are the top 100 highest transactions made between 7:00 am and 9:00 am?

-- select card, count(*) AS "Morning_Payments"
-- from transactions
-- where date<2
-- Group by card ;

  
-- -- NOW JOIN THEM INTO ONE TABLE
-- -- Query all records from all tables

-- select *
-- from transactions;

-- --Perform an INNER JOIN on the two tables
-- SELECT card_holder.id,
--        card_holder.full_name,
--        transactions.id,
-- 	   transactions.date,
--        transactions.amount,
--        transactions.card,
-- 	   transactions.id_merchant
-- FROM card_holder 
-- INNER JOIN transactions ON card_holder.id = transactions.id;

-- --Group similar credit cards
-- select
--   *
-- from payments as a
-- INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;
