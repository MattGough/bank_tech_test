require './lib/statement'
require './lib/account'

describe Statement do

  it 'should build a statement' do
    account = Account.new
    account.deposit(1000)
    transactions = account.transactions
    statement = Statement.new(transactions)
    expect(statement.build).to eq(" date || credit || debit || balance \n #{Date.today.to_s} || 1000 ||  || 1000 ")
  end
end
