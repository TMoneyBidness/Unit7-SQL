How can you isolate (or group) the transactions of each cardholder?

We can group them by the card holder id and credit card from "credit_card", then link is to the full name in the "card_holder" table. We end up joining 3 tables to see all relevant transactions.

Count the transactions that are less than $2.00 per cardholder

We can find the number of small transactions to be 350 out of the entire sample.

Is there any evidence to suggest that a credit card has been hacked?

Considering most of the merchant groups are food and restaurants, it's acceptable. However, we would want to group the data by time / date to see if there are many small transactions grouped together. There are not many obvious fraud accounts.

What are the top 100 highest transactions made between 7:00 am and 9:00 am? Do you see any anomalous transactions that could be fraudulent?

In my 'AM-transactions" view, I have noted that there are 8 large transactions over $1,000, which seems off to be spending that amount of money that early. 

Is there a higher number of fraudulent transactions made during the 7 to 9 am time frame versus the rest of the day?

Yes, if you modify the timeframes, you can see that many more large transactions are made later in the day. This correlates with the 

What are the top 5 merchants prone to being hacked using small transactions?

We can see that the merchants with the most minute transaction are Wood-Ramirez (7), Hood-Phillips (6), and Baker Inc (6). 