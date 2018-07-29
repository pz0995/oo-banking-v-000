class Transfer

attr_accessor :amount, :status, :sender, :receiver, :bad_transfer

  def initialize(status = "pending", sender, receiver, amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid?
    return true
    else
      !(sender.valid? && receiver.valid?) && @status == "rejected"
    return reject_transfer
  end
end

  def execute_transaction
    if !(sender.valid?)
      return reject_transfer
  else
     @sender.balance > @amount && valid? && @status != "complete"
      @sender.balance  -= amount
      @receiver.balance  += amount
      return @status = "complete"

end
end

def reject_transfer
  status = "rejected"
       "Transaction rejected. Please check your account balance."
    end


  def reverse_transfer
    if @status == "complete"
      # && valid?
      @sender.balance += amount
      @receiver.balance -= amount

      @status  = "reversed"
    else
      @status == "rejected"
     return reject_transfer
    end
  end
end
