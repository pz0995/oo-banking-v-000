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
    puts bad_transfer = "Transaction rejected. Please check your account balance." && status = "rejected"
  end

  def execute_transaction
    if !@sender.valid?
      return status = "rejected"
      # &&  @sender > @amount && @status == "pending" then
      transfer = (@sender.balance - @amount && @receiver.balance + @amount)
        return transfer_status "complete"
    # else
    # return rejected
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
