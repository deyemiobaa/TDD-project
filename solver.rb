class Solver
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def factorial
    if @number == 0
      1
    elsif @number < 0
      raise "Cannot get factorial of negative value"
    else
      digits =  1..@number
      result = 1
      digits.each {|number| result *= number}
      result
    end
  end

  def reverse(string)
    string.reverse
  end
end