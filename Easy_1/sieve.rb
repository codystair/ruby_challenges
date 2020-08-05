=begin
input: integer
output: array of integers
rules:
- returns all primes from 2 up to input number
- must use Sieve of Eratosthenes algorithm:
  - iterates over each unmarked number from 2 up to given number
  - marks all multiples of each unmarked number
  - returns all unmarked (prime) numbers

algorithm:
- set range to an array of number 2 to target number
- iterate over range with index i:
  - skip iteration if current element is nil
  - 
=end

class Sieve
  def initialize(number)
    @range = (2..number).to_a
  end

  def primes
    @range.each_with_index do |num, i|
      next unless num

      j = i + num
      while j < @range.size
        @range[j] = nil
        j += num
      end
    end

    @range.select{ |num| num }
  end
end
