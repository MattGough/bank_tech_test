require 'date'

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
    increase_balance(amount)
    save_transaction("IN", amount)
  end

  def withdraw(amount)
    error_message = "Insufficient funds: balance is £#{@balance}"
    raise error_message if @balance - amount <= OVERDRAFT_LIMIT
    decrease_balance(amount)
    save_transaction("OUT", amount)
  end

  def print_last_transaction
    tran = @transactions.last
    "#{tran[0]}, Date: #{tran[1]}, Amount: £#{tran[2]}, Balance: £#{tran[3]}"
  end

  private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  def save_transaction(payment_type, amount)
    @transactions << [payment_type, DATE_TODAY, amount , @balance]
  end
end
