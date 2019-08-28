# frozen_string_literal: true

require 'bank_account'

class Statement
  def self.request(statement)
    @statement = statement.reverse.each_slice(3).to_a.map do |statement_element|
      statement_element[1] < 0 ? statement_element[1] = "|| #{-statement_element[1]}" : statement_element[1] = "#{statement_element[1]} ||"
      statement_element.reverse.join(' || ')
    end.insert(0, 'date || credit || debit || balance')
  end

  def self.print_statement
    puts @statement
  end
end
