def solve
  sum = 0
  1.upto(999) { |i| sum += i if (i % 3 == 0 || i % 5 == 0)}
  puts sum
end

require 'timer_utils'
run(lambda {solve})

#233168
#Mean: 0.16 ms
#Median: 0.5 ms