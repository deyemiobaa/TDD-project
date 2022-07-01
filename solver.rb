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
  def fizzbuzz
    if @number % 3 == 0 && @number % 5 == 0
      "FizzBuzz"
    elsif @number % 3 == 0
      "Fizz"
    elsif @number % 5 == 0
      "Buzz"
    else
      @number.to_s
    end
  end
end
