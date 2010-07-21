class Integer
  def prime?
    return false if self <= 1
    return false if self % 2 == 0
    c = 3
    while c < self do
      return false if self % c == 0
      return true if c*c > self
      c+=2
    end
    return true
  end

  def prime_filtered?(primes)
    possible = self
    return true if primes.length == 0 && possible == 3

    primes.each do |prime|
      return true if prime * prime > possible
      return false if possible % prime == 0
    end

    return true
  end
end

def primes_upto(n)
  primes = []
  possible = 3
  while possible < n do
    primes << possible if possible.prime_filtered?(primes)
    possible += 2
  end
  primes
end


def fn(a,b,n)
  n*n+a*n+b
end

def find_consecutive(a,b)
  n = 0
  while fn(a,b,n) > 0 && fn(a,b,n).prime?
    n+=1
  end
  return n
end

def solver
  max = 1000

  max_length = 0
  prod = 0
  list_asc = primes_upto(max)
  list_desc = list_asc.map {|e| -e}
  list_desc.each do |a|
    list_asc.each do |b|
      c = find_consecutive(a,b)
      if c > max_length then
        prod = a * b
        max_length = c
      end
    end
  end
  puts prod
end

require 'timer_utils'

run lambda{solver}