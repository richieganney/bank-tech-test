# frozen_string_literal: true
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
    raise 'Invalid input. Must input an integer' unless deposit_amount.is_a? Integer

    @account_balance.push(deposit_amount)
    @full_statement.push(Time.now.to_s[0..9]).push(deposit_amount).push(account_balance)
  end

  def withdraw(withdrawal_amount)
    raise 'Invalid input. Must input an integer' unless withdrawal_amount.is_a? Integer
    @account_balance.push(-withdrawal_amount)
    @full_statement.push(Time.now.to_s[0..9]).push(-withdrawal_amount).push(account_balance)
  end
end

binding.pry
