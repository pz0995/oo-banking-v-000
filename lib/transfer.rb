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
    # @seller.uniq
    if @sender.balance > @amount && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      @status = "complete"
    else
    reject_transfer
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
end
