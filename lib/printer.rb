class Printer
  def statement_header # header for bank statement
    puts '  date  || credit || debit ||  balance   '
  end

  def print_statement(transaction) # print out each transaction
    puts transaction
  end
end
