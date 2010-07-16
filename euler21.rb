class Integer
  attr_accessor :divisors
  def factors
    return self.divisors unless self.divisors.nil?
    self.divisors = (1...self).to_a.select {|e| self % e == 0}
    self.divisors
  end

  def sum_of_divisors
    return 1 if self.nil?
    self.factors.inject(:+)
  end

  def amicable?
    self != self.sum_of_divisors && self.sum_of_divisors.sum_of_divisors == self
  end
end

def solver
  sum = 0
  seen = []
  (2...10000).step(2) do |i|
    next unless seen.index(i).nil?
    sum += i + i.sum_of_divisors if i.amicable?
    seen << i
    seen << i.sum_of_divisors
  end

  puts sum;

end

require 'timer_utils'

run lambda{solver}