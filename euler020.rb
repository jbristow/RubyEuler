def solver 
  puts (1..100).reduce(:*).to_s.split(//).inject(0) {|a,c| a + c.to_i}
end

require 'timer_utils'
run{solver}

# 648
# Mean: 0.6241 ms
# Median: 0.472 ms