Makers Academy Bank Tech Test
=============================

This is my attempt at the [Bank Tech Test](https://github.com/makersacademy/bank_tech_test). Below are the requirements:

##### Requirements

  * Deposits, withdrawal
  * Account statement (date, amount, balance)
  * Statement printing

##### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance

14/01/2012 || || 500.00 || 2500.00

13/01/2012 || 2000.00 || || 3000.00

10/01/2012 || 1000.00 || || 1000.00

##### Additional extensions

  * Statement filters (just deposits, withdrawals, date ascending, date descending)
  * Graphical interface

### Basic User Stories

```
As a customer,
So I can store my money,
I would like to deposit money in my Account.

As a customer,
So I can access my money,
I would like to withdraw money from my Account.

As a customer,
So I can keep a record of a deposit/withdrawal,
I would like to be able to print a transactional statement.

As a customer,
So I can see all my transactions,
I would like to be able to print a statement with all transactions.

```

### Additional User Stories

```
As a customer,
So I can analyze my statement more effectively,
I would like to be able to see just deposits.

As a customer,
So I can analyze my statement more effectively,
I would like to be able to see just withdrawals.

As a customer,
So I can choose the order of the statement,
I would like to be able to choose ascending chronological order.

As a customer,
So I can choose the order of the statement,
I would like to be able to choose descending chronological order.
```
