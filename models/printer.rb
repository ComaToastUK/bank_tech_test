class Printer
  def statement_header
    puts '    Date    || Credit || Debit ||    Balance   '
  end

  def print_statement(transaction)
    puts transaction
  end
end
