

class Integer
  def divisors
    return (1..(self-1)).to_a.delete_if {|e| self % e != 0 }
  end
  def divisor_sum
    return self.divisors.inject {|a,c| a+c}
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

max = 28123 
abundant = []
2.upto(max) do |i| 
  abundant << i if i.abundant?
end

sums =  []
0.upto(abundant.length-1) {|i|
  i.upto(abundant.length-1) {|j|
    sum = abundant[i] + abundant[j]
    sums << sum
  }
}
puts (1.upto(max).to_a - sums).inject {|a,c| a+c}