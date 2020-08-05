=begin
input: string
output: integer
rules:
- will return decimal version of trinary input
- a trinary number can only contain 3 symbols: 0, 1, 2

examples:
- '1' => 1
- '2' => 2
- '10' => 3

algorithm:
- set result to 0
- set digits to str split into array of integer digits
- iterate over digits in reverse order:
  - add digit * 3 ^ index to result
- return result
=end

class Trinary
  def initialize(str)
    @str = str
    @digits = str.chars.map(&:to_i)
  end

  def to_decimal
    return 0 unless valid_tri?
    @digits.reverse.map.with_index { |digit, i| digit * (3 ** i) }.sum
  end

  def valid_tri?
    @str.count('^0-2') == 0
  end
end
