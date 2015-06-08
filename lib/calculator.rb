#JOB: Peorforms required operation on two numbers
class Calculator
  attr_reader :number

  def initialize(number = 0)
    @number = number
  end

  def exicute(input = {})
    # number.send(input[:operator], input[:number])
    self.send(input[:operator], input[:number])
  end

  def add(number)
    @number + number
  end
end