# Bank Tech Test

## Project description

- This is a simple app which you can interact with through the command line.
- Users can make cash deposits and withdrawals.
- Users can also see their account statement (date, amount, balance) printed.

## User stories

As a user,  
So I can have a coherant place to store my money,  
I want to be able to make cash deposits into my bank ✅

As a user,  
So I can spend all the money that I earn in a month,  
I want to be able to withdraw that money ✅

As a user,  
So I can keep track of my spending,  
I want to be able to see an account statement whenever I want ✅

## Solution

I decided to model my solution into a single class because it allowed for a
simple but effective foundation from which I could launch the development
cycle.

## Gems

- pry - lets you interact with your program quickly and easily through the command line. It also runs all of your tests for you once you have finished.
- simplecov - for test coverage.

## Contribution

If you would like to contribute to this project, please submit a pull request at our github page.

## Local quickstart and running tests

First, clone this repository. Then:
```console
cd bank-tech-test
bundle install
rspec
```
This will take you into pry where you can proceed to interact with this app through the command line. Then:
```console
quit
```
when you want to exit the program. This will run the tests for you.

## Example output

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
