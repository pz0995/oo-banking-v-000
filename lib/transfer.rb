class Transfer

attr_accessor :sender, :receiver, :bad_transfer, :transfer_amount, :transfer_status
attr_reader :status

  def initialize(status = "pending", sender, receiver, transfer_amount)
    @status = status
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def rejected
    if !sender.valid
      status = "rejected"
      return bad_transfer = "Transaction rejected. Please check your account balance."
    end
end
  def execute_transaction
    if sender.valid? && sender.balance > transfer_amount && status == "pending"
      transfer = (@sender - @transfer_amount && @receiver + @transfer_amount)
          return transfer_status "complete"
    else
    return false
    end
  end
end
#
# def reverse_transfer
#         receiver.balance -= amount
#         sender.balance += amount
#         status = "reversed"
#       else
#         reject_transfer
#       end
#     end
# end
# end
