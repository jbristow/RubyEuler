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
run{solver}

#232792560
#Mean: 0.06 ms
#Median: 0.0 ms