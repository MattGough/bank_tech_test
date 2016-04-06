class Account

  START_BALANCE = 0
  OVERDRAFT_LIMIT = 0

  attr_reader :balance

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insufficient funds: balance is #{@balance}" if @balance - amount <= OVERDRAFT_LIMIT
    @balance -= amount
  end
end
