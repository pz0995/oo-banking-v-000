class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account

  def initialize(name, balance, status)
    @name =  name.freeze
    @balance = 1000.freeze
    @balance = balance.freeze
    @status = "open"
    @status = status.freeze
  end

# name, balance, status needs to be frozen
  def deposit
    puts bank_account = @balance + deposit
  end

  def display_balance
    @balance = "Your balance is $#{balance}."
  end

  def valid?
   @bank_account == "open" && @balance > 0? true : false
     end
  end

  def close_account
    @bank_account == "closed"? @status = "closed" : @status = "open"
  end
