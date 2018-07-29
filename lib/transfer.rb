class Transfer

attr_accessor :sender, :receiver, :amount, :transfer_status
attr_reader :status

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
    if @sender.balance > @amount && status == "pending" && valid?
      @sender.balance  -= amount
      @receiver.balance  += amount
      status = "complete"
    else
rejected
       "Transaction rejected. Please check your account balance." && status = "rejected"
    end
  end

  def reverse_transfer
    if @receiver.balance > @amount && status == "complete" && valid?
      @receiver.balance  -= amount
      @sender.balance  += amount
      @status  = "reversed"
    # else
    #   puts "Transaction rejected. Please check your account balance." && status = "rejected"
    end

    def rejected(status = "rejected")
      puts "Transaction rejected. Please check your account balance."

    end
  end
end
