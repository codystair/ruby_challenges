class SecretHandshake
  EVENTS = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(num)
    @digits = num.to_i.to_s(2).chars.reverse
  end

  def commands
    result = []
    @digits[0, 4].each_with_index do |digit, i|
      next if digit == '0'
      result << EVENTS[i]
    end
    @digits.size > 4 ? result.reverse : result
  end
end
