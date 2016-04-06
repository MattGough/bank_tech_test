class Account

  START_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end
end
