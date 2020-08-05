class BeerSong
  def verse(v)
    result = ''
    result << case v
              when 0
                zero_left
              when 1
                one_left
              when 2
                two_left(v)
              else
                normal_verse(v)
              end
    result
  end

  def verses(upper, lower)
    result = []
    (lower..upper).to_a.reverse.each do |v|
      result << verse(v)
    end
    result.join("\n")
  end

  def normal_verse(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
  end

  def two_left(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottle of beer on the wall.\n"
  end

  def one_left
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def zero_left
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def lyrics
    verses(99, 0)
  end
end
