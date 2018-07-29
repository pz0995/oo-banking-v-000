class BankAccount

  attr_accessor :validity, :balance, :bank_account, :deposit
  attr_reader :status, :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def deposit(deposit)
    @balance = (@balance + @deposit)
  end

  def valid?
    @balance > 0 && @status == "open" ? true : false
  end

  def close_account
    @status = "closed"
  end

end


#     can deposit money into its account (FAILED - 2)
#      is valid with an open status and a balance greater than 0
