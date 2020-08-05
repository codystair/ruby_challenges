=begin
input: string of digits
output: array of arrays

rules:
- returns all possible consecutive number series of a given length

examples:
- see tests

algorithm
- #slices(n):
- set digits to string split into chars and converted to integers
- set result to empty array
- iterate over digits:
  - push elements starting with current to n length to result
- return result
=end

class Series
  def initialize(str)
    @str = str
  end

  def slices(num)
    raise ArgumentError if num > @str.size

    ### first draft:
    # digits = @str.chars.map(&:to_i)
    # result = []
    # digits.each_cons(num) { |set| result << set }
    # result

    ### refactor:
    digits = @str.chars.map(&:to_i)
    digits.each_cons(num).to_a
  end
end
