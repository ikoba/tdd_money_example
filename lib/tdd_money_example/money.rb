class Money
  attr_accessor :amount
  private :amount=

  def ==(money)
    amount == money.amount
  end
end