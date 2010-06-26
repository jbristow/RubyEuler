
n1 = 1
n2 = 1
sum = 0
while (n2 < 4000000)
  temp = n1
  n1 = n2
  n2 = temp + n1
  if (n2 % 2 == 0) then
    sum += n2
  end
end
print sum