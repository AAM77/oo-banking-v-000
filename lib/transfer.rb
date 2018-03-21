class Transfer

  attr_accessor :sender, :receiver, :amount, :status, :balance


  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction

    if !@sender.valid?
      "Transaction rejected. Please check your account balance."

      self.status = "rejected"

    else

      @receiver.balance = @receiver.balance + @amount
      @sender.balance = @sender.balance - @amount
      self.status = "complete"
    end
  end

  def reverse_transfer
    if self.status == "complete"
      @sender.balance = @sender.balance + @amount
      @receiver.balance = @receiver.balance - @amount
      self.status = "reversed"
    end
  end
end
