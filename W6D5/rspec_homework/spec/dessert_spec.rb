require 'rspec'
require 'dessert'
# require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new('brownie', 10, chef) }
  let(:chef) { double("chef", :name => 'george') }

  describe "#initialize" do
    
    it "sets a type" do 
      expect(brownie.type).to eq('brownie')
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do 
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { brownie.quantity("10") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(brownie.add_ingredient("chocolate")).to include("chocolate") 
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect(brownie.mix!).to be(brownie.ingredients.shuffle!)
    end
  end

  describe "#eat" do

    it "subtracts an amount from the quantity" do 
      brownie.eat(2)
      expect(brownie.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(11) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(chef).to receive(:titleize)
      chef.titleize
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
