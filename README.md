# Bank Tech Test

This tech test was written as a part of Makers Academy's week 10, tech test week.

### Technology

This test was completed in Ruby with rspec and simplecov for testing. As specified in the requirements, an account holder can print their statement and see the output in a similar format to the one found below.

I chose to keep all functionality to the command line as specified in the requirements below &darr;. Data is kept in memory as there is not database functionality though it would be simple enough to include additional storage functionality.

### How to run
```
$ git clone https://github.com/ComaToastUK/bank_tech_test.git
$ cd Bank
$ irb || $ pry
require './models/account.rb'
account.deposit(amount) // to deposit
account.withdrawal(amount) // to withdraw
account.statement.print_statement // to print out the statement in the required format
```

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
