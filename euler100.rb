def solver
  a = 1
  b = 1
  answer = 0
  while answer < Math.sqrt(0.5)*100000   do
    a,b = a + 2 * b, a + b
    answer = (b+1) / 2
  end
  puts answer

end

require 'timer_utils'

run lambda{solver}