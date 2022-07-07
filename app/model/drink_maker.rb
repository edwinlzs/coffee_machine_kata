require_relative "drink_factory"
require_relative "../exception/insufficient_money_exception"
require_relative "../exception/no_instruction_exception"

class DrinkMaker
    def instructions(drink_name = nil, sugar = nil, cash = 0)
        begin
            validate_input(drink_name, sugar)
            drink = DrinkFactory.get_drink(drink_name)
            drink_code = drink.drink_code
            check_enough(drink.price, cash)
        rescue StandardError => e
            return e.message
        end

        return return_message(drink_code, sugar)
    end

    def return_message(drink_code, sugar)
        return "#{drink_code}:#{require_sugar(sugar)}:#{require_stick(sugar)}"
    end

    def require_sugar(sugar)
        sugar if sugar > 0
    end

    def require_stick(sugar)
        0 if sugar > 0
    end

    def check_enough(drink_cost, cash)
        difference = drink_cost - cash
        if difference > 0
            raise InsufficientMoneyException.new(difference)
        end
    end

    def validate_input(drink_name, sugar)
        if drink_name == nil and sugar == nil
            raise NoInstructionException
        end
    end
end