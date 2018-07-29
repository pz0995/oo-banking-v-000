class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account, :deposit

  def initialize(name, balance = 1000, status = "open")
    @name = name
    name.freeze
    @balance = balance
    @status = status
  end

# name, balance, status needs to be frozen
  def deposit
    @bank_account = @balance + @deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
   @status == "open" && @balance > 0? true : false
     end
  end

  def close_account(status)
    #  @status == "closed"? true : false

end


# can't change its name (FAILED - 1)
#   #deposit
#     can deposit money into its account (FAILED - 2)
#        can close its account (FAILED - 3)
