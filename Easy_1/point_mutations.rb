=begin
input: string
output: integer
rules:
- calculates the number of differences between 2 strings
- if strings are different lengths, only calulate over shorter string

algorithm:

=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    short, long = [@strand, other].sort_by(&:size)
    count = 0
    short.each_char.with_index do |char, i|
      count += 1 unless char == long[i]
    end
    count
  end
end
