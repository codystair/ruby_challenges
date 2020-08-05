class PigLatin
  def self.translate(words)
    words.split(' ').map do |word|
      translate_word(word)
    end.join(' ')
  end

  def self.translate_word(str)
    if vowel_start?(str)
      str + 'ay'
    else
      parts = calculate_consonant(str)
      parts.reverse.join + 'ay'
    end
  end

  def self.vowel_start?(str)
    str.match(/\A[aeiou]|[xy][^aeiou]/)
  end

  def self.calculate_consonant(str)
    consonant_parts = /\A([^aeiou]*qu|[^aeiou]+)([aeiou].*)\z/.match(str)
    [consonant_parts[1], consonant_parts[2]]
  end
end
