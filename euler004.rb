def solver
  maxprod = 0
  999.downto(100) do |i| 
    999.downto(100) do |j|
      maxprod = [i * j, maxprod].max if ((i * j).to_s == (i * j).to_s.reverse)
    end
  end
  puts maxprod
end

require 'timer_utils'
run lambda{solver}