class Array
  def prod 
    inject do |prod,x| prod ? prod * x : x end 
  end
end

def solver
  n = 2
  arr = []
  
  while (n <= 20)
    currn = n
    arr.each {|i| currn /= i if currn % i == 0}
    arr << currn
    n+=1
  end
  
  puts arr.prod
end

require 'timer_utils'
run lambda{solver}