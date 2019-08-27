require 'bank_account'

describe BankAccount do
  subject(:bank_account) {described_class.new}

  describe '#deposit' do
    it 'allows the user to desposit the first £50 into their bank account' do
      bank_account.deposit(50)
      expect(bank_account.account_balance).to eq 50
    end

    it 'allows the user to desposit £30 into their bank account with a current balance of £45' do
      bank_account.deposit(45)
      bank_account.deposit(30)
      expect(bank_account.account_balance).to eq 75
    end
  end
end


