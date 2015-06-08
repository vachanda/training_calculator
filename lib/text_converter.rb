class TextConverter

  def initialize(input_object)
    @input = input_object
  end

  def get_operator_and_number
    raise IOError, 'unknown operator' unless @input.is_a?String
    text_array = @input.split
    response = {}

    case text_array[0]
      when 'add', 'subtract' , 'multiply' , 'divide'
        response = validate_binary_operator(text_array)
      when 'cancel'
        raise IOError, 'unknown operator' if text_array.length > 1
        response[:operator] = 'cancel'.to_sym
      when 'exit'
        raise IOError, 'unknown operator' if text_array.length > 1
        response[:operator] = 'exit'.to_sym
    end
  end

  private
  def validate_binary_operator(text_array)
    raise IOError, 'Incomplete input' if text_array.length < 2
    raise IOError, 'Incorrect input length' if text_array.length > 2
    if /^\d+\.\d+$/ === text_array[1]
      number = text_array[1].to_f
    else
      raise IOError, 'Invalid input'
    end
    {
      operator: text_array[0].to_sym,
      number: text_array[1].to_f
    }
  end

end