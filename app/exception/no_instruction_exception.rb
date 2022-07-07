class NoInstructionException < StandardError
    def initialize(msg="M:no instructions")
        super(msg)
    end
end
