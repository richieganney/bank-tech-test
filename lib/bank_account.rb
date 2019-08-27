class BankAccount

  attr_reader :account_balance

  def initialize
    @account_balance = []
  end  

  def deposit(deposit_amount)
    @account_balance.push(50)
  end
end