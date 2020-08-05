=begin
input: string
output: integer
rules:
- input will be a base 10 (decimal) number
- output will be the base 8 (octal) version of the input
- conversion from decimal to octal:
  - given 233:
    = 2*8^2 + 3*8^1 + 3*8^1
    = 155

algorithm:
- set digits to string split into array of chars transformed to integers
- set result to 0
- set power to size of digits
- iterate over digits:
  - add product of digit and 8^power to result
  - decrement power by 1
- return result
=end

class Octal
  def initialize(num)
    @num = num
    @digits = num.chars.map(&:to_i)
  end

  def to_decimal
    return 0 unless valid_octal?

    @digits.reverse.map.with_index { |digit, i| digit*(8**i) }.sum
  end

  def valid_octal?
    @num.chars.each { |dig| return false if dig.to_i > 7}
    @num.match?(/\A\d+\z/)
  end
end
