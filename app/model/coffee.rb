require_relative "drink"

class Coffee < Drink

  def initialize
    super(6)
  end

  def drink_code
    "C"
  end
end