class Transfer

attr_accessor :amount, :transfer_status, :status, :sender, :receiver

  def initialize(status = "pending", sender, receiver, amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    !sender.valid? && receiver.valid?
     puts "Transaction rejected. Please check your account balance."
  end


  def execute_transaction
    if @sender.balance > @amount && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      @status = "complete"
    else
       "Transaction rejected. Please check your account balance."
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
