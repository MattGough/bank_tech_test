require './lib/account'

describe Account do
  subject(:account) { described_class.new }

  it { is_expected.to respond_to(:deposit).with(1).argument }

end
