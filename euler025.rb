def solver
  a=1
  b=1
  n=2
  while b.to_s.length < 1000 do
    a,b=b,a+b
    n+=1
  end
  puts n
end

require 'timer_utils'
run lambda{solver}