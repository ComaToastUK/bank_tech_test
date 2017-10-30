class Statement
  attr_reader :history

  def initialize
    @history = []
    @printer = Printer.new
  end

  def add_to_statement(timestamp, amount, balance)
    @history += [[timestamp, amount, balance]]
  end

  def print_statement
    @printer.statement_header
    @history.each do |transaction|
      if transaction[1] += 0
        @printer.print_statement(transaction.insert(2, '||').join('|      |'))
      else
        @printer.print_statement(transaction.insert(1, '||').join('|      |'))
      end
    end
  end
end
