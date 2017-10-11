require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do

  let(:chef) {double("chef", name: "Chef")}
  let(:dessert) {Dessert.new("cake", 1, chef)}


  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("cake", "1.5", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("onions")
      expect(dessert.ingredients).to eq(["onions"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to receive(:shuffle!)
      dessert.add_ingredient("onyon")
      dessert.add_ingredient("Ernyern")
      dessert.mix!
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert.eat(1)
      expect(dessert.quantity).to eq(0)
    end


    it "raises an error if the amount is greater than the quantity" do 
      expect{dessert.eat(2)}.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("Chef Chef the Great Baker")
      expect(dessert.serve).to eq("Chef Chef the Great Baker has made 1 cakes!")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      allow(chef).to receive(:bake).with(dessert)
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end

  end
end
