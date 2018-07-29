class Transfer

attr_accessor :amount, :transfer_status, :status, :sender, :receiver

  def initialize(status = "pending", sender, receiver, amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end



  def execute_transaction
    if @sender.balance > @amount && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      status = "complete"
    else
status = "rejected"
       "Transaction rejected. Please check your account balance." && status = "rejected"
    end
  end

  def reverse_transfer
    if status == "complete" && @receiver.balance > @amount && valid?
      @receiver.balance  -= amount
      @sender.balance  += amount
      @status  = "reversed"
    # else
    #   puts "Transaction rejected. Please check your account balance." && status = "rejected"
    end
    #
    # def rejected
    #   status = "rejected"
    #    puts "Transaction rejected. Please check your account balance."
    #
    # end
  end
end
