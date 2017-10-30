require './models/printer.rb'

RSpec.describe Printer do

  describe '#statement_header' do
    it 'lists the account columns' do
      printer = Printer.new
      expect{ printer.statement_header }.to output("    Date    || Credit || Debit ||    Balance   \n").to_stdout
    end
  end

end
