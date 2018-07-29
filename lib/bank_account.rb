class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account, :deposit

  def initialize(name.freeze, balance = 1000, status = "open")
    @name = name
    @name.freeze
    @balance = balance
    @status = "open"
  end

# name, balance, status needs to be frozen
  def deposit
    @balance = @balance + @deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
   @status == "open" && @balance > 0? true : false
     end
  end

  def close_account(status)
     if @status = "closed"
       @bank_account.closed

end
  end

# can't change its name (FAILED - 1)
#   #deposit
#     can deposit money into its account (FAILED - 2)
#        can close its account (FAILED - 3)
