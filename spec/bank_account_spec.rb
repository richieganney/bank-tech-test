require 'bank_account'

describe BankAccount do
  subject(:bank_account) {described_class.new}

  describe '#deposit' do
    it 'allows the user to desposit the first £50 into their bank account' do
      bank_account.deposit(50)
      expect(subject.account_balance).to eq [50]
    end
  end
end


