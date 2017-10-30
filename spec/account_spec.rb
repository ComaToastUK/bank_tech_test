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

  # As a bank customer
  # so that I can see how much money I heavyweight
  # I want to check my balance

  describe '#balance' do
    it 'is empty when a new account is initialized' do
      account = Account.new
      expect(account.balance).to equal(0)
    end

    it 'returns the balance to the user' do
      account = Account.new
      account.deposit(50)
      expect(account.balance).to equal(50)
    end
  end

  # As a bank customer
  # so that I can keep track of when a transaction took place
  # I want my transaction to have a timestamp

  describe '#datestamp' do
    it 'shows the data a transaction took place' do
      account = Account.new
      expect(account.timestamp).to eq('30/10/2017')
    end
  end
end
