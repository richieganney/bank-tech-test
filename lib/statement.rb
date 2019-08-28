# frozen_string_literal: true

require 'bank_account'

class Statement
  def self.request_statement(statement)
    @statement = statement.reverse.each_slice(3).to_a.map do |statement_element|
      statement_element[1] < 0 ? statement_element[1] = "|| #{'%.2f' % -statement_element[1]}" : statement_element[1] = "#{'%.2f' % statement_element[1]} ||"
      statement_element[0] < 0 ? statement_element[0] = "|| #{'%.2f' % -statement_element[0]}" : statement_element[0] = "#{'%.2f' % statement_element[0]} ||"
      statement_element.reverse.join(' || ')
    end
  end

  def self.create_table(input)
    input.insert(0, 'date || credit || debit || balance')
  end

  def self.print_statement(statement)
    puts Statement.create_table(Statement.request_statement(statement))
  end
end
