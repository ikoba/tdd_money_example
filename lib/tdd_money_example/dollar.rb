class Dollar
  attr_accessor :amount

  def initialize(amount)
    self.amount = amount
  end

  def *(multiplier)
    return Dollar.new(amount * multiplier)
  end

  def ==(object)
    amount == object.amount
  end
end
