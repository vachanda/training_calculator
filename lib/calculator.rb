#JOB: Peorforms required operation on two numbers
class Calculator
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def exicute(input = {})
    number.send(input[:operator], input[:number])
  end
end