class BankAccount

  attr_accessor :bank_account, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance = self.balance + amount
  end

  def display_balance
    @balance
  end

  def valid?(user)
    true if user.status == "open" && user.balance > 0
  end

  def close_account(user)
    user.status = "closed"
  end

end
