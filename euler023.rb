require 'set'
class Integer
  attr_accessor :divs
  def divisors
    return divs unless divs.nil?
    self.divs = [1]
      
    2.upto(Math.sqrt(self)).each do |i|
      if self % i == 0 then
        self.divs << i 
        self.divs << self / i if self / i != i
      end
    end
    return self.divs
  end

  def divisor_sum
    return self.divisors.inject(:+)
  end

  def deficient?
    return self.divisor_sum < self
  end

  def abundant?
    return self.divisor_sum > self
  end

  def perfect?
    return self.divisor_sum == self
  end
end

def solver
  max = 28123
  abundant = []
  1.upto(max) do |i|
    abundant << i if i.abundant?
  end
  not_sums = (1..max).to_a
  sums = []
  (0...abundant.length).each do |i|
    (i...abundant.length).each do |j|
      break if abundant[i] + abundant[j] > max 
      sums << (abundant[i] + abundant[j])
    end
  end
  puts (not_sums - sums).inject(:+)
end

require 'timer_utils'

run(5){solver}

# 4179871
# One Run...
# Mean: 23025.21 ms
# Median: 23025.21 ms 

# Five Runs...
# Mean: 17608.267 ms
# Median: 16312.437 ms