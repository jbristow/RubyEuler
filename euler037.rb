class Integer
  def prime?
    return true if self == 2
    return false if self == 1 || self % 2 == 0
    (3..Math.sqrt(self)).step(2) { |i| return false if self % i == 0 }
    return true
  end

  def left_truncateable?
    curr = self.to_s.split(//)
    return self.prime? if curr.length == 1
    curr.shift
    return self.prime? && curr.join().to_i.left_truncateable?
  end

  def right_truncateable?
    curr = self.to_s.split(//)
    return self.prime? if curr.length == 1
    curr.pop
    return self.prime? && curr.join().to_i.right_truncateable?
  end
end

def build_trunc_primes
  left,right = [],[]
  [2,3,5,7].each do |i|
    right += build_right_trunc_prime(i)
  end
  return right.select {|e| e.right_truncateable? && e.left_truncateable?}
end

def build_right_trunc_prime(n)
  list = []
  1.upto(9) do |i|
    a = 10 * n + i
    list << a if a.prime?
    list += build_right_trunc_prime(a) if a.prime?
  end
  return list
end

def solver
  puts build_trunc_primes.inject(:+)
end

require 'timer_utils'

run{solver}

#  748317
#  Mean: 248.32344 ms
#  Median: 248.551 ms
