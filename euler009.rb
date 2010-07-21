
answer = 0
start = Time.new

def solver 
  found = false
  1.upto(998) do |a|
   (a+1).upto(999) do |b|
      c = 1000 - a - b
      if a*a + b*b == c*c then
        puts answer = a * b * c
        found = true
        break
      end
    end
    break if found
  end
end

require 'timer_utils'
run lambda{solver}

#31875000
#Mean: 34.34 ms
#Median: 34.0 ms