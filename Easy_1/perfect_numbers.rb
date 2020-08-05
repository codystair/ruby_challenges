class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 2

    sum = (1...num).to_a.select { |n| num % n == 0 }.reduce(&:+)
    if sum > num
      'abundant'
    elsif sum == num
      'perfect'
    else
      'deficient'
    end
  end
end
