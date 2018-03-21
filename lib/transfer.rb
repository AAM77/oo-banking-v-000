class Transfer

  attr_accessor :sender, :receiver, :amount, :status, :balance


  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

  def valid?(sender, receiver)
    if (sender.status == "open" && sender.balance > @amount)
      if (self.status == "open" && self.balance)



end
