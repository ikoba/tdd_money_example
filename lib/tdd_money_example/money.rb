class Money
  attr_accessor :amount
  private :amount=

  class << self
    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end
  end

  def ==(money)
    amount == money.amount && self.class == money.class
  end
end