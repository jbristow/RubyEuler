def C(n, r)
  return 1 if r == n
  n_f = fact(n)
  r_f = fact(r)
  return n_f / (r_f * fact(n - r))
end

def fact(n)
  return (1..n).to_a.inject(1) {|a,c| a*c}  
end

sols = []
1.upto(100) do |n|
  1.upto(n) do |r|
    sols << C(n,r)
    puts "#{n} #{r} #{C(n,r)}"
  end
end

puts sols.delete_if {|e| e <= 1000000}.length