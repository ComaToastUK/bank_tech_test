class Printer
  def statement_header
    puts '  date  || credit || debit ||  balance   '
  end

  def print_statement(transaction)
    puts transaction
  end
end
