# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new }

  describe '#deposit' do
    it 'allows the user to desposit the first £50 into their bank account' do
      bank_account.deposit(50)
      expect(bank_account.calculate_account_balance).to eq 50
    end

    it 'allows the user to desposit £30 into their bank account with a current balance of £45' do
      bank_account.deposit(45)
      bank_account.deposit(30)
      expect(bank_account.calculate_account_balance).to eq 75
    end

    it 'should throw an error if an invalid input into the method' do
      expect { bank_account.deposit('65') }.to raise_error 'Invalid input. Must input an integer'
    end

    it 'every deposit should include a date log and the current balance' do
      bank_account.deposit(20)
      expect(bank_account.full_statement).to include(Time.now.to_s[0..9].to_s)
      expect(bank_account.full_statement).to include(20)
    end
  end
end
