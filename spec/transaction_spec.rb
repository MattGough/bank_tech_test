require './lib/transaction'

describe Transaction do
  subject(:transaction) { described_class.new("IN", Date.today.to_s, 50 , 50, 0, 50) }

  it 'has attributes: date, amount, credit, debit' do
    expect(transaction.date).to eq(Date.today.to_s)
    expect(transaction.amount).to eq(50)
    expect(transaction.credit).to eq(50)
    expect(transaction.debit).to eq(0)
    expect(transaction.type).to eq("IN")
  end
end
