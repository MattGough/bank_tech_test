require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a starting balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'should increase the balance by the depsoited amount' do
    account.deposit(50)
    expect(account.balance).to eq(50)
  end

  it 'should decrease the balance by the withdrawn amount' do
    account.deposit(50)
    account.withdraw(30)
    expect(account.balance).to eq(20)
  end

  it 'should stop the user withdrawing money if none is avaialble' do
    expect{ account.withdraw(50) }.to raise_error "Insufficient funds: balance is £0"
  end

  it 'should print a transaction statememt with date, amount & balance' do
    account.deposit(50)
    expect(account.print_last_transaction).to eq("IN, Date: #{Date.today.to_s}, Amount: £50, Balance: £50")
  end
end
