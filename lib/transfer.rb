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
    return "Transaction rejected. Please check your account balance."
  end
end

  def execute_transaction
    # @seller.uniq
    if @sender.balance > @amount && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      @status = "complete"
    else
      @status == "rejected"
      return "Transaction rejected. Please check your account balance."
    end


    end


  def reverse_transfer
    if @status == "complete"
      # && valid?
      @sender.balance += amount
      @receiver.balance -= amount

      @status  = "reversed"
    else
      @status == "rejected"
     return "Transaction rejected. Please check your account balance."
    end
  end
end
