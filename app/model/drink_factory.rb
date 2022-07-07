require_relative "chocolate"
require_relative "coffee"
require_relative "tea"

class DrinkFactory
  DRINK_CODES = { "chocolate" => Chocolate.new(), "coffee" => Coffee.new(), "tea" => Tea.new() }

  def self.get_drink(drink_name)
    DRINK_CODES[drink_name]
  end
end