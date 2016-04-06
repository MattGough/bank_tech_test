require './lib/transaction'

describe Transaction do
  subject(:transaction) { described_class.new("IN", Date.today.to_s, 50 , 50, 0, 50) }

  it 'should return a string of transaction atributes' do
    action = transaction.transaction_parse(transaction)
    expect(action).to eq("IN, Date: #{Date.today.to_s}, Amount: £50, Balance: £50")
  end
end
