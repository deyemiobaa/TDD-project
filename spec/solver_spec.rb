require_relative '../solver'

describe Solver do
  it 'factorial returns the multiplication of all positive integers' do
    solver = Solver.new(5)

    expect(solver.factorial).to eq(120)
  end

  it 'factorial of zero return 1' do
    solver = Solver.new(0)

    expect(solver.factorial).to eq(1)
  end

  it 'factorial of negative number raises an error' do
    solver = Solver.new(-1)
    expect { solver.factorial }.to raise_error('Factorial of negative number is not defined')
  end

  it 'reverse a given string' do
    solver = Solver.new(5)

    expect(solver.reverse('hello')).to eq('olleh')
  end

  it 'FizzBuzz returns Fizz when divisible by 3' do
    solver = Solver.new(9)

    expect(solver.fizzbuzz).to eq('Fizz')
  end

  it 'FizzBuzz returns Buzz when divisible by 5' do
    solver = Solver.new(5)

    expect(solver.fizzbuzz).to eq('Buzz')
  end

  it 'FizzBuzz returns FizzBuzz when divisible by 3 and 5' do
    solver = Solver.new(15)

    expect(solver.fizzbuzz).to eq('FizzBuzz')
  end
end
