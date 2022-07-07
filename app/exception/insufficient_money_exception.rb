class InsufficientMoneyException < StandardError
    def initialize(difference)
        msg = "M:Need #{difference} more euros!"
        super(msg)
    end
end
