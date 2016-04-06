require 'date'
require './lib/transaction'
require './lib/statement'

class Account < Transaction

  START_BALANCE = 0
  OVERDRAFT_LIMIT = 0
  DATE_TODAY = Date.today.to_s

  attr_reader :balance, :transactions

  def initialize
    @balance = START_BALANCE
    @transactions = []
  end

  def deposit(amount)
    new__deposit_transaction(amount)
    increase_balance(amount)
  end

  def withdraw(amount)
    error_message = "Insufficient funds: balance is £#{@balance}"
    raise error_message if @balance - amount <= OVERDRAFT_LIMIT
    new_withdraw_transaction(amount)
    decrease_balance(amount)
  end

  def print_last_transaction
    transaction_parse(@transactions.last)
  end

  def print_all_transactions
    Statement.new(@transactions).build
  end

  private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  def new__deposit_transaction(amount)
    save(Transaction.new("IN", DATE_TODAY, amount, amount, nil, @balance + amount))
  end

  def new_withdraw_transaction(amount)
    save(Transaction.new("OUT", DATE_TODAY, amount, nil, amount, @balance - amount))
  end

  def save(transaction)
    @transactions << transaction
  end
end
