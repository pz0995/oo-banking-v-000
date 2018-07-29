class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account

  def initialize(name, balance = 1000, status = "open")
    @name =  name.freeze
    @balance = balance
    @status = "open"
    # @status = status.freeze
  end

# name, balance, status needs to be frozen
  def deposit
    puts @balance = balance + deposit
  end

  def display_balance
    @balance = "Your balance is $#{name.balance}."
  end

  def valid?
   @status == "open" && @balance > 0? true : false
     end
  end

  def close_account(status)
    @status == "closed"? @status = "closed" : @status = "open"
  end
