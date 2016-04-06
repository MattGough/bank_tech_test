require 'date'
require './lib/transaction'

class Account

  START_BALANCE = 0
  OVERDRAFT_LIMIT = 0
  DATE_TODAY = Date.today.to_s

  attr_reader :balance

  def initialize
    @balance = START_BALANCE
    @transactions = []
  end

  def deposit(amount)
    @transactions << Transaction.new("IN", DATE_TODAY, amount, amount, nil, @balance + amount)
    increase_balance(amount)
  end

  def withdraw(amount)
    error_message = "Insufficient funds: balance is £#{@balance}"
    raise error_message if @balance - amount <= OVERDRAFT_LIMIT
    @transactions << Transaction.new("OUT", DATE_TODAY, amount, nil, amount, @balance - amount)
    decrease_balance(amount)
  end

  def print_last_transaction
    tran = @transactions.last
   "#{tran.type}, Date: #{tran.date}, Amount: £#{tran.amount}, Balance: £#{tran.new_balance}"
  end

  private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end
end
