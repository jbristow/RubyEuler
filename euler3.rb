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
run lambda{solve}