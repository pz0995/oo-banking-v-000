class Transfer

attr_accessor :sender, :receiver, :bad_transfer, :amount, :transfer_status
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
    if !valid? && @sender > @amount && status == "pending"
      @sender -= amount
      @receiver += amount
      status = "complete"
    else
      rejected
    end
  end

  def reverse_transfer
    if valid? && receiver.balance > amount && status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      status = "reversed"
    else
      rejected
    end
  end
end
