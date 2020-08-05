class Phrase
  def initialize(str)
    @words = str.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    result = Hash.new(0)
    @words.each { |word| result[word] += 1 }
    result
  end
end
