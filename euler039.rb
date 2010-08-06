p = 120

def solver
  numsols = 0
  maxn = 0
  (3..1000).each do |n|
    sols = []
    1.upto(n-2) do |a|
      a.upto(n-1) do |b|
        c = n - a + b
        sols << [a,b,c] if a*a + b*b == c*c
      end
    end
    if sols.length > numsols then
      numsols = sols.length
      maxn = n
    end

  end
  puts maxn
end

require 'timer_utils'

run(1) {solver}