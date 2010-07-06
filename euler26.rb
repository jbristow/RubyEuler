numbers = (2..1000).to_a

numbers.map! {|e| 1.0/e}

puts numbers.inspect
count = 0
puts "***"
while numbers.length > 1 do
  temp = []
  numbers.each do |e|
    temp << e if ((10 ** count) * e % 1.0 != 0) || (((10 ** count - 1) * e) % 1.0 != 0)
  end
  numbers = temp
  puts  numbers.inspect
  
  count += 1
end
puts numbers.inspect

puts numbers[1], count