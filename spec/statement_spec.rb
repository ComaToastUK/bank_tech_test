require './models/statement'

RSpec.describe Statement do

  describe '#history' do
    it 'should contain a list of historical transactions' do
      expect( Statement.history ).to be(nil)
    end
  end
end
