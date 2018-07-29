class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account, :deposit

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @name.freeze
    @balance = balance
    @status = status

  end

  def deposit
    @deposit = @balance + @deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
     @status == "open" && @balance > 0? true : false
     end
  end

  def close_account
    if close_account = true
        @status = "closed"
  end
    # close_account = (@status = "closed")


end


# can't change its name (FAILED - 1)
#   #deposit
#     can deposit money into its account (FAILED - 2)
#        can close its account (FAILED - 3)
