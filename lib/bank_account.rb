class BankAccount

  attr_accessor :name, :status, :validity, :balance

  def initialize(name, balance, status)
    bank_account.name =  bank_account.new = 1000.freeze
    # @balance = 1000
    status = "open".freeze
  end

# name, balance, status needs to be frozen
  def deposit
    puts bank_account = @balance + deposit
  end

  def display_balance
      @balance = "Your balance is $#{balance}."
  end

  def valid?
   if bank_account == "open" && @balance > 0
     return true
   else
     return false
     end
   end

  def close_account
    if bank_account_closed == true
      status = "closed"
    else
      status = "open"
    end
  end
end
