class Transaction

  attr_reader :type, :date, :amount, :credit, :debit, :new_balance

  def initialize(type, date, amount, credit, debit, new_balance)
    @type = type
    @date = date
    @amount = amount
    @credit = credit
    @debit = debit
    @new_balance = new_balance
  end

  def transaction_parse(tran)
    "#{tran.type}, Date: #{tran.date}, Amount: £#{tran.amount}, Balance: £#{tran.new_balance}"
  end
end
