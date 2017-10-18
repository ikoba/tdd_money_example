class Money
  attr_reader :amount, :currency

  class << self
    def dollar(amount)
      Money.new(amount, "USD")
    end

    def franc(amount)
      Money.new(amount, "CHF")
    end
  end

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(money)
    @amount == money.amount && @currency == money.currency
  end

  def *(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def +(addend)
    Sum.new(self, addend)
  end

  def reduce(bank, to)
    rate = bank.rate(@currency, to)
    Money.new(@amount / rate, to)
  end

  def to_s
    "#{@amount} #{@currency}"
  end
end