class Transfer

attr_accessor :sender, :receiver, :bad_transfer, :transfer_amount, :transfer_status
attr_reader :status

  def initialize(sender, receiver, status = "pending", transfer_amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
  end


  def valid?
    sender.valid? && receiver.valid?

  def execute_transaction
    if valid? @sender - @transfer_amount && @receiver + @transfer_amount
    if @transfer_amount > 0
    return transfer_status "complete"
  else
    return false
    end
  end

def reverse_transfer
    @receiver - @transfer_amount && @sender + @transfer_amount
  if @transfer_status == "complete"
  return @transfer_status = "reversed"
  end
end

  def reject

  end
end
end
