require 'spec_helper'

describe TextConverter do
  context 'Verify user input' do
    it 'should take input string and verify for non-null' do
      user_input = TextConverter.new(Object.new)
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'unknown operator')
    end

    it 'should take input string and verify presence of number for binary operators' do
      user_input = TextConverter.new('add ')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'Incomplete input')
    end

    it 'should take input string and verify number in string for +, -, *, /' do
      user_input = TextConverter.new('add add')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'Invalid input')
    end

    it 'should take input string and verify the correct length of input' do
      user_input = TextConverter.new('add 20 20')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'Incorrect input length')
    end
  end
end