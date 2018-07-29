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

  def rejected
    status = "rejected"
    bad_transfer = "Transaction rejected. Please check your account balance."
  end

  def execute_transaction
    if valid? && @sender.balance > @amount
      @sender.balance  -= amount
      @receiver.balance  += amount
      status = "complete"
    else
      valid? == rejected
    end
  end

  def reverse_transfer
    if valid? && receiver.balance  > amount && status == "complete"
      receiver.balance  -= amount
      sender.balance  += amount
      status.balance  = "reversed"
    else
      valid? == rejected
    end
  end
end
