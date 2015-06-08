# JOB: Parses input string for correctness
class TextConverter

  def initialize(input_object = nil)
    @input = input_object
  end

  def get_operator_and_number
    raise IOError, 'unknown operator' unless @input.is_a?String
    text_array = @input.split

    case text_array[0]
      when 'add'
        validate_binary_operator(text_array)
        return AddOperation.new(text_array[1].to_f)
      when 'subtract'
        validate_binary_operator(text_array)
        return SubtractOperation.new(text_array[1].to_f)
      when 'multiply'
        validate_binary_operator(text_array)
        return MultiplyOperation.new(text_array[1].to_f)
      when 'divide'
        validate_binary_operator(text_array)
        return DivideOperation.new(text_array[1].to_f)
      when 'cancel'
        raise IOError, 'unknown operator' if text_array.length > 1
        return CancelOperation.new(text_array[1].to_f)
      when 'exit'
        raise IOError, 'unknown operator' if text_array.length > 1
        return 'exit'
    end
  end

  private
  def validate_binary_operator(text_array)
    raise IOError, 'Incomplete input' if text_array.length < 2
    raise IOError, 'Incorrect input length' if text_array.length > 2
    raise IOError, 'Invalid input' unless /^\d+\.\d+$/ === text_array[1] || /^\d+$/ === text_array[1]
  end
end