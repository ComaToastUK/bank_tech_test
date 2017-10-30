require './lib/statement'

RSpec.describe Statement do
  subject(:statement) { described_class.new }

  describe '#history' do
    it 'should contain a list of historical transactions' do
      expect(statement.history).to eq([])
    end
  end

  describe '#add_to_statement' do
    it 'should add a transaction to the statement' do
      timestamp = Time.now.strftime('%d/%m/%Y')
      amount = 50
      balance = 1050
      expect { statement.add_to_statement(timestamp, amount, balance) }.to change { statement.history }.to([['30/10/2017', 50, 1050]])
      expect { statement.add_to_statement(timestamp, -60, 990) }.to change { statement.history }.to([['30/10/2017', 50, 1050], ['30/10/2017', -60, 990]])
    end
  end

  describe '#print_statement' do
    it 'should print a bank statement showing if transactions are in debit or credit' do
      timestamp1 = '30/10/2017'
      amount1 = 50
      balance1 = 1050
      timestamp2 = '30/10/2017'
      amount2 = -500
      balance2 = 550
      statement.add_to_statement(timestamp1, amount1, balance1)
      statement.add_to_statement(timestamp2, amount2, balance2)
      expect { statement.print_statement }.to output("  date  || credit || debit ||  balance   \n30/10/2017 ||  ||  || -500 || 550\n30/10/2017 || 50 ||  ||  || 1050\n").to_stdout
    end
  end
end
