class Transfer

attr_accessor :transfer, :sender, :receiver, :bad_transfer, :status, :transfer_amount, :transfer_status

  def initialize(sender, receiver, status = "pending", transfer_amount)
    @name = name
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
  end


  # def valid?
  #   if @sender (@status == "open" && @balance > 0? true : false)
  #   if @receiver (@status == "open" && @balance > 0? true : false)
  # end

def execute_transaction
  @sender - @transfer_amount && @receiver + @transfer_amount
  if @transfer_amount > 0
  return transfer_status "complete"
else
  return false
  end
end

def reverse_transfer
    @receiver - @transfer_amount && @sender + @transfer_amount
  if @transfer_status = "complete"
  return @transfer_status = "reversed"
end
end

end
  #
  # #    initialize
  #     can initialize a Transfer (FAILED - 9)
  #     initializes with a sender (FAILED - 10)
  #     initializes with a receiver (FAILED - 11)
  #     always initializes with a status of 'pending' (FAILED - 12)
  #     initializes with a transfer amount (FAILED - 13)
  #   #valid?
  #     can check that both accounts are valid (FAILED - 14)
  #     calls on the sender and reciever's #valid? methods (FAILED - 15)
  #   #execute_transaction
  #     can execute a successful transaction between two accounts (FAILED - 16)
  #     each transfer can only happen once (FAILED - 17)
  #     rejects a transfer if the sender doesn't have a valid account (FAILED - 18)
  #   #reverse_transfer
  #     can reverse a transfer between two accounts (FAILED - 19)
  #     it can only reverse executed transfers (FAILED - 20)
