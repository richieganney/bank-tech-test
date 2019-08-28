# frozen_string_literal: true

require 'statement'
require 'timecop'

describe Statement do
  subject(:statement) { described_class.new }

  describe '.request' do
    let(:bank_account) { double :bank_account }

    it 'renders the full bank statement, with one transaction, with a date, time and balance; ready to view' do
      allow(bank_account).to receive(:full_statement) { [Time.now.to_s[0..9], 500, 500] }
      expect(Statement.request(bank_account.full_statement)).to eq(['date || credit || debit || balance',
                                                                    "#{Time.now.to_s[0..9]} || 500.00 || || 500.00 ||"])
    end

    it 'renders the full bank statement, with one multiple transactions, with a date, time and balance; ready to view' do
      allow(bank_account).to receive(:full_statement) { [Time.now.to_s[0..9], 500, 500, Time.now.to_s[0..9], -50, 450] }
      expect(Statement.request(bank_account.full_statement)).to eq(['date || credit || debit || balance', "#{Time.now.to_s[0..9]} || || 50.00 || 450.00 ||",
                                                                    "#{Time.now.to_s[0..9]} || 500.00 || || 500.00 ||"])
    end
  end

  describe '.print_statement' do
    let(:bank_account) { double :bank_account }

    it 'outputs the bank statement to the console' do
      allow(bank_account).to receive(:full_statement) { [Time.now.to_s[0..9], 500, 500] }
      Statement.request(bank_account.full_statement)
      expect { Statement.print_statement }.to output.to_stdout
    end
  end
end
