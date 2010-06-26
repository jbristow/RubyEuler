maxprod = 0
999.downto(100) {|i| 
  999.downto(100) {|j|
    mult = i * j
    maxprod = [mult, maxprod].max if (mult.to_s == mult.to_s.reverse)
  }}
print maxprod