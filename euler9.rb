
answer = []
1.upto(997) do |a|
 (a+1).upto(998) do |b|
    c = Math.sqrt(a**2 + b**2).to_i
    answer << a * b * c if a + b + c == 1000
  end
end
puts answer.first