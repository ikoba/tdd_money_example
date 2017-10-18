class Pair
  attr_accessor :from, :to
  private :from=, :to=

  def initialize(from, to)
    self.from = from
    self.to = to
  end

  def ==(object)
    from == object.from && to == object.to
  end

  def eql?(object)
    self == object
  end

  def hash
    0
  end
end