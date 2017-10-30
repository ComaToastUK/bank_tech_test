require_relative 'statement'
require_relative 'printer'

class Account # allows user to deposit and withdraw
  attr_reader :balance, :statement

  MINIMUM_BALANCE = 0

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount) # add to account balance and store transaction in statement
    @balance += amount
    @statement.add_to_statement(timestamp, amount, @balance)
  end

  def withdrawal(amount) # remove from account balance and store transaction in statement
    raise 'Insufficient funds' if in_debit?(amount)
    @balance -= amount
    withdrawal_amount = amount * -1
    @statement.add_to_statement(timestamp, withdrawal_amount, @balance)
  end

  def timestamp
    Time.now.strftime('%d/%m/%Y')
  end

  private

  def in_debit?(amount) # checks if the account is in credit or debit
    (@balance - amount) < MINIMUM_BALANCE
  end
end
