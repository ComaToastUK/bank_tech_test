require './models/account.rb'

RSpec.describe Account do

# As a bank customer
# A customer can make a deposit into their account
# And increase the balance of their bank account

  describe '#deposit' do
    it 'increases the balance' do
      account = Account.new
      expect { account.deposit(10) }.to change { account.balance }.by(10)
    end

    it 'increases the balance by the amount entered' do
      account = Account.new
      expect { account.deposit(10) }.to change { account.balance }.by(10)
      expect { account.deposit(50) }.to change { account.balance }.to(60)
      expect { account.deposit(100) }.to change { account.balance }.to(160)
    end
  end

# As a bank customer
# A customer can make a withdrawal from their account
# And decrease the balance of their bank account

  describe '#withdrawal' do
    it 'reduces the balance' do
      account = Account.new
      account.deposit(100)
      expect { account.withdrawal(50) }.to change { account.balance }.by(-50)
      expect { account.withdrawal(20) }.to change { account.balance }.to(30)
    end
  end
end
