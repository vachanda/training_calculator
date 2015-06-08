require 'spec_helper'

describe Calculator do
  context "Addition" do
    it "hould give 10 for user input 'add 10' " do
      calcuation = Calculator.new(0)
      text = TextConverter.new('add 10')
      hash = text.get_operator_and_number
      expect(calcuation.exicute(hash)).to eq(10)
    end
  end
end