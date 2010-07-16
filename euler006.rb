def solver
  sum_of_squares = 0
  sum = 0
  1.upto(100) do |i|
    sum_of_squares += i * i
    sum += i
  end
  puts (sum * sum) - sum_of_squares
end

require 'timer_utils'
run lambda{solver}