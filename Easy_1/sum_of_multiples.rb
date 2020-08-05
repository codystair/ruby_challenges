=begin
input: integer(s)
output: integer
rules:
- returns the sum of multiples of given numbers up to limit
- numbers default to 3 and 5 if none given

algorithm:
- if no arguments given, set number to array of 3 and 5
- set total to 0
- iterate over numbers:
  - while num <= limt
    - add num to total
    - increment num by num
- return total
=end

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def self.to(limit, numbers = [3, 5])
    total = 0
    (1...limit).each do |num|
      if numbers.any? { |n| num % n == 0 }
        total += num
      end
    end
    total
  end

  def to(limit)
    self.class.to(limit, @numbers)
  end
end
