class Account
  attr_reader :balance

  def initialize
    @balance = 0
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

end
