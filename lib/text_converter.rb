class TextConverter

  def initialize(input_object)
    @input = input_object
  end

  def get_operator_and_number
    raise IOError, 'unknown operator' unless @input.is_a?String
    text_array = @input.split
    operator = nil
    number = nil

    case text_array[0]
      when 'add'
        operator = '+'
        number = validate_binary_operator(text_array)
      when 'subtract'
        operator = '-'
        number = validate_binary_operator(text_array)
      when 'multiply'
        operator = '*'
        number = validate_binary_operator(text_array)
      when 'divide'
        operator = '/'
        number = validate_binary_operator(text_array)
      when 'cancel'

      when 'exit'
        
      else

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
    text_array[1].to_f
  end

end