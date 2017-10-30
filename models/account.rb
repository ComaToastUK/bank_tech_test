require_relative 'statement'

class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

  def timestamp
    Time.now.strftime('%d/%m/%Y')
  end

  def add_to_statement

  end

end
