a = 1
b = 1
answer = 0
while answer < Math.sqrt(0.5)*100000   do
  temp = a
  a = a + 2 * b
  b = temp + b
  answer = (b+1) / 2
  
end
puts answer