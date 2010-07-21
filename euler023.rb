class Integer
  attr_accessor :divs
  def divisors
    return divs unless divs.nil?
    self.divs = []
    (1).upto(self-1) {|i| self.divs << i if self % i == 0}
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
  2.upto(max) do |i|
    abundant << i if i.abundant?
    #puts "#{i} #{i.divisors.inspect}" if i.abundant? && i % 2 != 0
  end
  not_sums = abundant
  1.upto(abundant.length) do |i|
    i.upto(abundant.length) do |j|
      not_sums.delete_if {|e| e == abundant[i]+abundant[j]}
    end
  end
  puts not_sums.inject(:+)
end

require 'timer_utils'

run lambda{solver}