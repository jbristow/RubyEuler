max = 0
1.upto(100) do |a|
  1.upto(100) do |b|
    curr = (a**b).to_s.split('').map { |e| e.to_i }.inject(:+)
    max = [max, curr].max  
  end
end
puts max