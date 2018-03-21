class BankAccount

  attr_accessor :name, :bank_account, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(ammount)
    self.balance = self.balance + amount
  end

  def display_balance
    @balance
  end

  def valid?
    true if self.status == "open" && self.balance > 0
  end

end
