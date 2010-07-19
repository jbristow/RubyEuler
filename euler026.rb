def primes_upto(n)
  primes = []
  possible = 3
  while possible < n do
    primes << possible if prime?(possible, primes)
    possible += 2
  end
  primes
end

def cycle_length(n)
  quotients=[]
  remainders=[]

  quotients<<0
  remainders<<1

  1.upto(n) do |i|
    quotients<<remainders[i-1]*10/n
    remainders<<remainders[i-1]*10-quotients[i]*n

    1.upto(i-1) do |j|
      return (i-j) if quotients[i] && remainders[j] == remainders[i]
    end

  end
  return -1
end

def prime?(possible, primes)
  return true if primes.length == 0 && possible == 3
  
  primes.each do |prime|
    return true if prime * prime > possible 
    return false if possible % prime == 0  
  end
  
  return true
end

def solver
  result=0
  max_length=0
  length=0

  primes_upto(1000).each do |i|
    length = cycle_length(i)
    if( length > max_length ) then
      result = i
      max_length = length
    end
  end
  puts result
end

require 'timer_utils'

run lambda{solver}