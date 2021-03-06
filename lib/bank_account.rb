# frozen_string_literal: true

require 'statement'
require 'pry'

class BankAccount
  attr_reader :full_statement

  def initialize
    @account_balance = []
    @full_statement = []
  end

  def account_balance
    @account_balance.sum
  end

  def deposit(deposit_amount)
    raise 'Invalid input. Must input an integer' if deposit_amount.is_a? String

    @account_balance.push(deposit_amount)
    @full_statement.push(Time.now.strftime('%d/%m/%Y')).push(deposit_amount).push(account_balance)
  end

  def withdraw(withdrawal_amount)
    raise 'Invalid input. Must input an integer' if withdrawal_amount.is_a? String

    @account_balance.push(-withdrawal_amount)
    @full_statement.push(Time.now.strftime('%d/%m/%Y')).push(-withdrawal_amount).push(account_balance)
  end
end

binding.pry
