require './models/statement'

RSpec.describe Statement do

  describe '#history' do
    it 'should contain a list of historical transactions' do
      statement = Statement.new
      expect( statement.history ).to eq([])
    end
  end

  describe '#add_to_statement' do
    it 'should add a transaction to the statement' do
      statement = Statement.new
      timestamp = Time.now.strftime('%d/%m/%Y')
      amount = 50
      balance = 1050
      expect{ statement.add_to_statement(timestamp, amount, balance) }.to change{ statement.history }.to([['30/10/2017', 50, 1050]])
    end
  end
end
