class Statement
  attr_reader :history

  def initialize
    @history = []
  end

  def add_to_statement(timestamp, amount, balance)
    @history += [[timestamp, amount, balance]]
  end
end
