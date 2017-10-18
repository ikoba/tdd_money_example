require_relative 'money'

class Dollar < Money
  def initialize(amount, currency)
    super(amount, currency)
  end

  def *(multiplier)
    Money.dollar(amount * multiplier)
  end
end
