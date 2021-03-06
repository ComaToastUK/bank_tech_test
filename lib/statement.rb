class Statement
  attr_reader :history

  def initialize
    @history = []
    @printer = Printer.new
    @print_history = []
  end

  def add_to_statement(timestamp, amount, balance)
    @history.push([timestamp, amount, balance])
  end

  def print_statement
    @printer.statement_header
    @history.each { |transaction| @print_history << transaction.clone }
    @print_history.reverse.each do |transaction|
      transaction[1] >= 0 ? @printer.print_statement(transaction.insert(2, ' || ').join(' || ')) :
      @printer.print_statement(transaction.insert(1, ' || ').join(' || '))
    end
    @print_history = []
  end
end
