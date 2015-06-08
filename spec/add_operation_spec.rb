require 'spec_helper'

describe AddOperation do
  context "Initialize" do
    it "should return AddOperation object with value 10 for input 10" do
      calcuation = Calculator.new(0)
      text = TextConverter.new('add 10')
      obj = text.get_operator_and_number
      expect(obj.number).to eq(10)
    end
  end
end