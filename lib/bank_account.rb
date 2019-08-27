# frozen_string_literal: true

class BankAccount
  attr_reader :full_statement

  def initialize
    @account_balance = []
    @full_statement = []
  end

  def calculate_account_balance
    @account_balance.sum
  end

  def deposit(deposit_amount)
    raise 'Invalid input. Must input an integer' unless deposit_amount.is_a? Integer

    @account_balance.push(deposit_amount)
    @full_statement.push(Time.now.to_s[0..9].to_s).push(deposit_amount).push(calculate_account_balance)
  end
end
