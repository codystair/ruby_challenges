class Luhn
  def initialize(num)
    @digits = num.to_s.chars.map(&:to_i)
  end

  def addends
    result = []
    @digits.reverse.each_with_index do |digit, i|
      if i.even?
        result << digit
      else
        (digit * 2) < 10 ? result << (digit * 2) : result <<(digit * 2) - 9
      end
    end
    result.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    new_num = num * 10
    counter = 1
    if new(new_num).valid?
      new_num
    else
      remainder = new(new_num).checksum % 10
      new_num + (10 - remainder)
    end
  end
end
