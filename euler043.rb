


def rule1(arr)
  arr[3] % 2 == 0
end

def rule2(arr)
  (arr[2]+arr[3]+arr[4])%3 == 0
end

def rule3(arr)
  arr[5] % 5 == 0
end

def rule4(arr)
  (100*arr[4]+10*arr[5]+arr[6])%7==0
end

def rule5(arr)
  (100*arr[5]+10*arr[6]+arr[7])%11==0
end

def rule6(arr)
  (100*arr[6]+10*arr[7]+arr[8])%13==0
end

def rule7(arr)
  (100*arr[7]+10*arr[8]+arr[9])%17==0
end

def conformist?(arr)
  rule1(arr) && rule2(arr) && rule3(arr) && rule4(arr) && rule5(arr) && rule6(arr) && rule7(arr)
end

def solver
perms = [0,1,2,3,4,5,6,7,8,9].permutation(10).select {|e| conformist?(e)}.map{|e| e.join.to_i}
  
puts perms.inject(:+)
end

require 'timer_utils'
run(1){solver}

#  16695334890
#  Mean: 8834.127 ms
#  Median: 8834.127 ms