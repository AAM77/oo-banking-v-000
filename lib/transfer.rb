class Transfer

  attr_accessor :sender, :receiver, :amount, :status


  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

  def valid?(sender, receiver)
    if (sender.status == "open" && sender.balance > @amount)



end
