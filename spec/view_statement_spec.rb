# frozen_string_literal: true

require 'statement'
require 'timecop'

describe Statement do
  describe '.print_statement' do
    let(:bank_account) { double :bank_account }

    it 'outputs the bank statement to the console' do
      allow(bank_account).to receive(:full_statement) { ['31/12/1999', 500, 500] }
      expect { Statement.print_statement(bank_account.full_statement) }.to output("date || credit || debit || balance\n31/12/1999 || 500.00 || || 500.00 ||\n").to_stdout
    end
  end
end
