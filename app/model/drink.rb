class Drink
  attr_accessor :price

  def initialize(price)
    @price = price
  end

  def drink_code
    raise "drink_code method is not implemented"
  end
end