sum_of_squares = 0
1.upto(100) do |i|
  sum_of_squares += i * i
end

sum = 0
1.upto(100) do |i|
  sum += i
end

puts (sum * sum) - sum_of_squares