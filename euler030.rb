def solver
  sum=0
  min=2
  max=(9**5)*6
  min.upto(max) do |i|
    digits=i.to_s.split(//).map{|e|e.to_i**5}.inject(:+)
    sum+=digits if digits==i
  end
  puts sum
end

require 'timer_utils'

run{solver}

