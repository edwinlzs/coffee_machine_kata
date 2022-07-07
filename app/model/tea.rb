require_relative "drink"

class Tea < Drink

  def initialize
    super(4)
  end

  def drink_code
    "T"
  end
end