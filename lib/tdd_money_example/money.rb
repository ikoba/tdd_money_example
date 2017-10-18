class Money
  attr_accessor :amount, :currency
  private :amount=, :currency=

  class << self
    def dollar(amount)
      Money.new(amount, "USD")
    end

    def franc(amount)
      Money.new(amount, "CHF")
    end
  end

  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def ==(money)
    amount == money.amount && self.currency == money.currency
  end

  def *(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def +(addend)
    Sum.new(self, addend)
  end

  def reduce(to)
    self
  end

  def to_s
    "#{amount} #{currency}"
  end
end