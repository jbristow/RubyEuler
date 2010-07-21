def solver
  primes = [2]
  numPrimes = 10001
  
  curr = 3
  
  while (primes.length < numPrimes) do
    primality = true
    primes.each do |p|
      if curr % p == 0 then
        primality = false
        break
      end
    end
    
    primes << curr if primality
    curr+=2
  end
  puts primes.last
end

require 'timer_utils'
run lambda{solver}

#104743
#Mean: 6565.24 ms
#Median: 7213.5 ms
