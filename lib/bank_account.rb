class BankAccount

  attr_accessor :name, :status, :validity, :balance, :bank_account

  def initialize(name, balance = 1000, status = "open")
    @name =  name.freeze
    @balance = balance
    @status = "open"
  end

# name, balance, status needs to be frozen
  def deposit
    @balance = balance + deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
   @status == "open" && @balance > 0? true : false
     end
  end

  def close_account(status)
     if @status = !"open"
       @status = "closed"
  end
end
