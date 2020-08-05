=begin
input: string
output: string
rules:
- input will consist of letters, spaces, and a point
- spaces indicates separation between words.
- point indicates termination of last word
- output will reverse odd indexed words

examples:
"whats the matter with kansas" => "whats eht matter htiw kansas"
"whats the matter with kansas today" => "whats eht matter htiw kansas yadot."

algorithm:
- set result to empty array
- set words to input split into array
- iterate over words:
  - if index is odd, push reversed word to result
  - otherwise, push word to result
- return result
=end

def odd_words(str)
  result = []
  words = str.split
  words.each_with_index do |word, i|
    result << word if i.even?
    next if i.even?

    if word[-1] == '.'
      result << word[0..-2].reverse + '.'
    else
      result << word.reverse
    end
  end
  result.join(' ')
end

p odd_words("whats the matter with kansas")
p odd_words("whats  the  matter with  kansas")
p odd_words("whats the matter with kansas today.")
p odd_words("")
