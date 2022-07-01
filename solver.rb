class Solver
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def factorial
    if @number.zero?
      1
    elsif @number.negative?
      raise 'Cannot get factorial of negative value'
    else
      digits = 1..@number
      result = 1
      digits.each { |number| result *= number }
      result
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz
    if (@number % 3).zero? && (@number % 5).zero?
      'FizzBuzz'
    elsif (@number % 3).zero?
      'Fizz'
    elsif (@number % 5).zero?
      'Buzz'
    else
      @number.to_s
    end
  end
end
