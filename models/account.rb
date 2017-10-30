require_relative 'statement'

class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    datestamp = timestamp
    add_to_statement(datestamp, amount, @balance)
  end

  def withdrawal(amount)
    @balance -= amount
    datestamp = timestamp
    add_to_statement(datestamp, amount, @balance)
  end

  def timestamp
    Time.now.strftime('%d/%m/%Y')
  end

private

  def add_to_statement(timestamp, amount, balance)
    @statement.add_to_statement(timestamp, amount, balance)
  end
end
