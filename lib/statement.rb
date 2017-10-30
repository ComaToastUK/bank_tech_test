class Statement # this stores transaction info and calls a printer
  attr_reader :history

  def initialize # initialize empty arrays and printer
    @history = []
    @printer = Printer.new
    @print_history = []
  end

  def add_to_statement(timestamp, amount, balance) # push transactions to array
    @history.push([timestamp, amount, balance])
  end

  def print_statement # prints the statement without affecting the original transaction data
    @printer.statement_header
    @history.each { |transaction| @print_history << transaction.clone }
    @print_history.reverse.each do |transaction|
      transaction[1] >= 0 ? @printer.print_statement(transaction.insert(2, ' || ').join(' || ')) :
      @printer.print_statement(transaction.insert(1, ' || ').join(' || '))
    end
    @print_history = []
  end
end
