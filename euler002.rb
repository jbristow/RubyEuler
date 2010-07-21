def solve
  n1 = 1
  n2 = 1
  sum = 0
  while (n2 < 4000000) do
    n1,n2 = n2, n2 + n1
    sum += n2 if (n2 % 2 == 0)
  end
  puts sum
end

require 'timer_utils'
run lambda{solve}

#4613732
#Mean: 0.02 ms
#Median: 0.0 ms