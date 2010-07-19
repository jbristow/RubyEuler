def solver
  sum=0
  4000.upto(200000) do |i|
    digits=i.to_s.split(//).map{|e|e.to_i**5}.inject(:+)
    sum+=digits if digits==i
  end
  puts sum
end

require 'timer_utils'

run lambda{solver}

