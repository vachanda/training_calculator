require 'spec_helper'

describe AddOperation do
  context "Initialize" do
    it "should return AddOperation object with value 10 for input 10" do
      add_operation = AddOperation.new(10)
      expect(add_operation.number).to eq(10)
    end
  end

  context "Addition" do
    it "should return 10 for a given AddOperation object with value 10" do
      add_operation = AddOperation.new(10)
      calculator = Calculator.new
      expect(add_operation.operate(calculator)).to eq(10)
    end
  end
end