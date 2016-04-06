class Statement

  def initialize(transactions)
    @transactions = transactions
  end

  def build
    statememt = add_header(evaluate_transactions)
    join_lines(statememt)
  end

  private

  def evaluate_transactions
    @transactions.reverse.map { |x| " #{x.date} || #{x.credit} || #{x.debit} || #{x.new_balance} \n"}
  end

  def add_header(statememt)
    statememt.unshift(" date || credit || debit || balance \n")
  end

  def join_lines(lines)
    lines.join.chomp
  end
end
