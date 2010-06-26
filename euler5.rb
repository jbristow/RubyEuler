class Array; 
  def prod; 
    inject( nil ) do |prod,x| 
      prod ? prod*x : x 
    end 
  end; 
end

n = 2
arr = []

while (n <= 20)
  currn = n
  arr.each do |i|
    if currn % i == 0
      currn /= i
    end
  end
  arr << currn
  n+=1
end

puts arr.prod