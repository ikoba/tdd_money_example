require_relative 'money'

class Franc < Money
  def initialize(amount)
    self.amount = amount
  end

  def *(multiplier)
    Franc.new(amount * multiplier)
  end
end
