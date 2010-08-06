class Integer
  def factorial
    return 1 if self == 0
    (1..self).inject(1,:*)
  end
end

def solver
  seed = "0123456789"
  sofar = ""
  nth = 999999
  (0..9).each do |i|
    f=(9-i).factorial
    n=nth/f
    digit = (seed[n] - ?0).to_s
    sofar += digit
    nth -= f*n
    seed = seed.delete(digit)
  end
  puts sofar
end

require 'timer_utils'

run{solver}
# 2783915460
# Mean: 0.21608 ms
# Median: 1.6755 ms