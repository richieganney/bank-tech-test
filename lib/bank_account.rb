class BankAccount

  def initialize
    @account_balance = []
  end 
  
  def account_balance
    @account_balance.sum
  end

  def deposit(deposit_amount)
    raise 'Invalid input. Must input an integer' unless deposit_amount.is_a? Integer
    @account_balance.push(deposit_amount)
  end
end