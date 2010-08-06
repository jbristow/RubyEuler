def solver
  lines = []
  file = File.new("euler13.txt", "r")
  while line = file.gets do
    lines << line
  end
  file.close

  lines = lines.map {|e| e.split('')}

  first10 = []
  0 .upto(10) {|e| first10 << lines.inject(0) {|acc, curr| acc + curr[e].to_i }}
  puts first10.inject(0) {|a,c| a == 0 ? c.to_i : a*10 + c.to_i}.to_s.slice(0,10)
end

require 'timer_utils'

run{solver}

#5537376230
#Mean: 10.98074 ms
#Median: 11.81 ms