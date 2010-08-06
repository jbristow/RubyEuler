def solve
  num = 600851475143
  curr = num
  n = 2
  while (n * n < num)
    if (curr % n == 0) then
      maxPrime = n
      while (curr % n == 0)
        curr /= n
      end
    end
    n+=1
  end
  puts maxPrime
end

require 'timer_utils'
run{solve}

#6857
#Mean: 572.8 ms
#Median: 575.5 ms