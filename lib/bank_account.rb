class BankAccount

  attr_accessor :validity, :balance, :bank_account, :deposit
  attr_reader :status, :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit
    @balance + @deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
     @balance > 0 && @status == "open"
     end
  

  def close_account
    @status = "closed"
end
end

# end


# can't change its name (FAILED - 1)
#   #deposit
#     can deposit money into its account (FAILED - 2)
#        can close its account (FAILED - 3)
