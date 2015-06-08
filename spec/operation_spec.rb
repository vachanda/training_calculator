require 'spec_helper'

describe Operation do
  context "Equality" do
    it "should be equal to itself" do
      operation = Operation.new(10)
      expect(operation).to eq(operation)
    end

    it "should'nt be equal to other object" do
      operation = Operation.new(10)
      obj_new = Object.new
      expect(operation).to_not eq(obj_new)
    end

    it "should treat 2 objects of equal value as equal" do
      operation1 = Operation.new(10)
      operation2 = Operation.new(10)
      expect(operation1).to eq(operation2)
    end
  end
end