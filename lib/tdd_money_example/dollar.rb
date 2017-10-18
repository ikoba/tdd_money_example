class Dollar
  attr_accessor :amount
  private :amount=

  def initialize(amount)
    self.amount = amount
  end

  def *(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(object)
    amount == object.amount
  end
end
