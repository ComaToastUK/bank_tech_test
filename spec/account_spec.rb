require './models/account.rb'

RSpec.describe Account do
  describe '#deposit' do
    it 'increases the balance' do
      account = Account.new
      expect { account.deposit(10) }.to change { account.balance }.by(10)
    end
  end
end
