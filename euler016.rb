def solver
  puts (2 ** 1000).to_s.split('').inject(0) {|a,c| a + c.to_i}
end

require 'timer_utils'
run{solver}

# 1366
# Mean: 0.92952 ms
# Median: 0.7075 ms