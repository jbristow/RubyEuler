maxprod = 0
999.downto(100) {|i| 
  999.downto(100) {|j|
    maxprod = [i * j, maxprod].max if ((i * j).to_s == (i * j).to_s.reverse)
  }}
puts maxprod