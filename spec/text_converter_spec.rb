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
      user_input = TextConverter.new('subtract add')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'Invalid input')
    end

    it 'should take input string and verify the correct length of input for binary operator' do
      user_input = TextConverter.new('add 20 20')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'Incorrect input length')
    end

    it 'should take input string and verify the correct length of input for cancel' do
      user_input = TextConverter.new('cancel 20')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'unknown operator')
    end

    it 'should take input string and verify the correct length of input for exit' do
      user_input = TextConverter.new('exit 20')
      expect{user_input.get_operator_and_number}.to raise_error(IOError, 'unknown operator')
    end

    it "should return AddOperation object with value 10 for user input 'add 10'" do
      user_input = TextConverter.new('add 10')
      expected_response = AddOperation.new(10.to_f)
      expect(user_input.get_operator_and_number.number).to eq(expected_response.number)
    end
  end
end