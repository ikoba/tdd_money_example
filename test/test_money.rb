require "test_helper"

class MoneyTest < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    product = five * 2
    assert_equal 10, product.amount
    product = five * 3
    assert_equal 15, product.amount
  end

  def test_equality
    assert Dollar.new(5) == Dollar.new(5)
    refute Dollar.new(5) == Dollar.new(6)
  end
end
