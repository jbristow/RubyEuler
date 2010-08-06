require "mathn.rb"

class Integer
  attr_accessor :divisor_list
  def divisors
    return self.divisor_list unless self.divisor_list.nil?
    self.divisor_list = (1..self).to_a.delete_if {|i| self % i != 0}
    return self.divisor_list
  end

  def prime_factors
    curr = self
    out = {}
    p = 2
    while p*p < self do
      while (curr % p == 0) do
        out[p] = 0 if out[p].nil?
        out[p] += 1
        curr /= p
      end
      p += 1
    end
    return out
  end

  def divisible_n_times(divisor)
    counter = 0
    temp = self
    while temp % divisor == 0 do
      temp /= divisor
      counter+=1
    end
    return counter
  end

  def num_divisors
    return 1 if self == 1
    return 2 if self == 3
    return self.prime_factors.values.inject(1){|a,c| a*(c+1)}
  end
end

def triangle(n)
  return (n * (n + 1) / 2)
end

def solver
  max = 500
  counter = 1
  divisorcount = triangle(counter).num_divisors
  while divisorcount < max do
    counter += 1
    divisorcount = triangle(counter).num_divisors
    #puts [counter, triangle(counter), divisorcount, counter.prime_factors.values.inject(:+)].join("\t")
  end

  puts (triangle(counter))
end

require 'timer_utils'

run{solver}