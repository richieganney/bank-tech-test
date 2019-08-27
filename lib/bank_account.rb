class BankAccount

  def initialize
    @account_balance = []
  end 
  
  def account_balance
    @account_balance.sum
  end

  def deposit(deposit_amount)
    @account_balance.push(deposit_amount)
  end
end