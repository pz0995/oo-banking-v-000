class Transfer

attr_accessor :transfer, :sender, :receiver, :bad_transfer, :status, :transfer_amount

  def initialize(transfer, sender, receiver, status = "pending", transfer_amount)
    @transfer = transfer
    @sender = sender.name
    @receiver = receiver.name
    @status = status
    @transfer_amount = transfer_amount
  end


  def valid?
    if @sender (@status == "open" && @balance > 0? true : false)
    if @receiver (@status == "open" && @balance > 0? true : false)
  end

def execute_transaction
  if @deposit > 0
  sender.bank_account - deposit && receiver.bank_account + deposit
  end
end

def reverse_transfer
  if execute_transaction == true
  receiver - deposit && sender + deposit
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
