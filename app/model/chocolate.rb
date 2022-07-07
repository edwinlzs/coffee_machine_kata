require_relative "drink"

class Chocolate < Drink

  def initialize
    super(5)
  end

  def drink_code
    "H"
  end
end