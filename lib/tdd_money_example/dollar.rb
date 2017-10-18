require_relative 'money'

class Dollar < Money
  def initialize(amount)
    self.amount = amount
  end

  def *(multiplier)
    Dollar.new(amount * multiplier)
  end
end
