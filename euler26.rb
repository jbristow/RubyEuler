numbers = (2..10).to_a

numbers.map! {|e| [1.0/e,1.0/e]}

puts numbers.inspect
count = 0
while numbers.length > 2 do
  puts "***"
  numbers.map! {|e| [10*e[0],e[1]]}
  numbers = numbers.delete_if {|e| e[0]%1.0 == 0}
  puts numbers.inspect
  numbers = numbers.delete_if {|e| e[0] - e[1] % 1.0 == 0}
  count += 1
  puts numbers.inspect
end
puts numbers[1], count