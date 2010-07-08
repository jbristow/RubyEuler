def A(m,n)
  if m == 0
    return n + 1
  elsif m > 0 && n == 0
    return [m-1, 1]
  elsif m > 0 && n > 0
    return [m-1, A(m,n-1)]
  end
end

puts (0..6).to_a.map {|n| [n,n]}.map{|n| A(n[0], n[1])}.inspect