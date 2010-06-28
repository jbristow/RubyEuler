p = 120

numsols = 0
maxn = 0
1.upto(1000) do |n|
  sols = []
  1.upto(n-1) do |a|
    a.upto(n) do |b|
      c = n - a + b
      sols << [a,b,c] if a*a + b*b == c*c
    end
  end
  if sols.length > numsols then
    numsols = sols.length
    maxn = n
    puts [n, sols.length].inspect
  end
  
end
puts maxn