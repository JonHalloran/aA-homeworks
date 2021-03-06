require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dessert) { Dessert.new("truffle", 2, chef) }
  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("truffle")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(2)
    end


    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end


    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("truffle", "2", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("chocolate")
      expect(dessert.ingredients).to eq(["chocolate"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      arr = ["chocolate", "milk", "eggs", "sugar"]
      dessert.add_ingredient("chocolate")
      dessert.add_ingredient("milk")
      dessert.add_ingredient("eggs")
      dessert.add_ingredient("sugar")
      dessert.mix!
      expect(dessert.ingredients).to receive(:shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to eq(1)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(3)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef")
      expect(dessert.serve).to include("Chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      dessert.make_more
      expect(chef).to receive(:bake).with(dessert)
    end
  end
end
