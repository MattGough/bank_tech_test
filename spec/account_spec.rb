require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'should have a starting balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'should increase the balance by the depsoited amount' do
    account.deposit(50)
    expect(account.balance).to eq(50)
  end
end
