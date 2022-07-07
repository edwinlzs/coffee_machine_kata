require "spec_helper"
require_relative "../app/model/drink_maker"

RSpec.describe DrinkMaker do
  subject { DrinkMaker.new() } 

  it "starts with no instructions" do
    instructions = subject.instructions

    expect(instructions).to eq("M:no instructions")
  end

  context "When tea" do
    it "should have 1 tea with no sugar and no stick" do
      instructions = subject.instructions("tea", 0, 4)

      expect(instructions).to eq("T::")
    end

    it "should have 1 tea with a stick when there is sugar" do
      instructions = subject.instructions("tea", 1, 4)

      expect(instructions).to eq("T:1:0")
    end

  end

  context "When coffee" do
    it "should have 1 coffee with 2 sugar and a stick" do
      instructions = subject.instructions("coffee", 2, 6)

      expect(instructions).to eq("C:2:0")
    end
  end

  context "When chocolate" do
    it "should have 1 chocolate with no sugar and no stick" do
      instructions = subject.instructions("chocolate", 0, 5)

      expect(instructions).to eq("H::")
    end
  end

  context "When not enough money" do
    it "should have a message stating not enough money" do
      instructions = subject.instructions("tea", 0)

      expect(instructions).to eq("M:Need 4 more euros!")
    end
  end
end