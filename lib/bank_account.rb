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
    @balance += deposit
  end

  def valid?
     @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"
  end

end


#     can deposit money into its account
#      is valid with an open status and a balance greater than 0
