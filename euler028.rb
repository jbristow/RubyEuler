def solver
  sum=1
  last=1
  max=1001
  (3..max).step(2) do |side|
    n=side-1
    sum+=2*(2*last+5*n)
    last+=4*n
  end
  puts sum
end

require 'timer_utils'

run lambda{solver}