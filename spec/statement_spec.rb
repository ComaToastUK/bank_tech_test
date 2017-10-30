require './models/statement'

RSpec.describe Statement do

  describe '#history' do
    it 'should contain a list of historical transactions' do
      statement = Statement.new
      expect( statement.history ).to eq([])
    end
  end
end
