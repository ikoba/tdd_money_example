class Franc
  attr_accessor :amount
  private :amount=

  def initialize(amount)
    self.amount = amount
  end

  def *(multiplier)
    Franc.new(amount * multiplier)
  end

  def ==(object)
    amount == object.amount
  end
end
