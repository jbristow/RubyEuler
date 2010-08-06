def solver
  primes = []
  possible = 3
  while possible < 2_000_000 do
    primes << possible if prime?(possible, primes)
    possible += 2
  end
  puts (2 + primes.inject {|a,c| a+c})
end

def prime?(possible, primes)
  return true if primes.length == 0 && possible == 3
  
  primes.each do |prime|
    return true if prime * prime > possible 
    return false if possible % prime == 0  
  end
  
  return true
end

require 'timer_utils'
run{solver}

#142913828922
#Mean: 5294.56 ms
#Median: 5217.0 ms