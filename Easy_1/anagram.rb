class Anagram
  def initialize(word)
    @word = word
    @chars = word.downcase.chars.sort
  end

  def match(list)
    list.select { |word| anagram?(word) }
  end

  def anagram?(str)
    str.downcase.chars.sort == @chars &&
      str.downcase != @word.downcase
  end
end
