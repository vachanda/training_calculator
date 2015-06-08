# JOB: Base class for all calculator operations
class Operation
  attr_reader :number
  def initialize(number = 0)
    @number = number
  end

  def ==(other)
    self.class == other.class && @number == other.number 
  end
  alias :eql? :==
end