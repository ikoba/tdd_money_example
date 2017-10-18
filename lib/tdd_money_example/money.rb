class Money
  attr_accessor :amount, :currency
  private :amount=, :currency=

  class << self
    def dollar(amount)
      Dollar.new(amount, "USD")
    end

    def franc(amount)
      Franc.new(amount, "CHF")
    end
  end

  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def ==(money)
    amount == money.amount && self.class == money.class
  end
end