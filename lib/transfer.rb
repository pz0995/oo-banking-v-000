class Transfer

attr_accessor :amount, :status, :sender, :receiver, :bad_transfer

  def initialize(status = "pending", sender, receiver, amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    !(sender.valid? && receiver.valid?)
    @status = "Transaction rejected. Please check your account balance."
    # @status = "rejected"
  end


  def execute_transaction
    if @sender.balance > @amount && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      @status = "complete"
    else
    #    @status = "Transaction rejected. Please check your account balance."
       @status = "rejected"
    end
  end

  def reverse_transfer
    if @status == "complete"
      # && valid?
      @sender.balance += amount
      @receiver.balance -= amount

      @status  = "reversed"
    end
  end
end
