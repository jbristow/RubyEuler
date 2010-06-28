def pentagon(n)
  return n*(3.0*n-1)/2.0
end

def is_pentagonal(n)
  return ((Math.sqrt(24*n + 1) + 1) / 6) % 1.0 == 0.0;
end

max = 10000

mindiff = -1
1.upto(max) do |j|
  1.upto(max) do |k|    
    sum = pentagon(j) + pentagon(k)
    
    next if !is_pentagonal(sum)
    
    diff = pentagon(j) - pentagon(k)
    diff = diff < 0 ? diff * -1 : diff
    
    if diff > 0 && is_pentagonal(diff) then
      mindiff = (mindiff < 0 ? diff : [mindiff,diff].min)
    end
  end
end
puts mindiff

