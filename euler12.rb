require "mathn.rb"
class Integer
  def divisors
    return (1..self).to_a.delete_if {|i| self % i != 0}
  end
  def prime_factors
    return Prime.instance.take_while {|i| i <= self}.delete_if {|i| self % i != 0}
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
    return self.prime_factors.map {|e| self.divisible_n_times(e) }.inject(0) {|sum, n| sum ? sum+(n.to_i+1) : n.to_i+1 }
  end
end

def triangle(n)
  return (n * (n + 1) / 2)
end

max = 500

counter = 11831
divisorcount = triangle(counter).num_divisors
while divisorcount < max do
  counter += 1
  divisorcount = triangle(counter).num_divisors
  puts [counter, triangle(counter), divisorcount].inspect
end

puts (triangle(counter))