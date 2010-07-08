$sequence = "UDDDUdddDDUDDddDdDddDDUDDdUUDd"
puts $sequence.inspect

input = "a"
exprs = ["a"]
$sequence.split('').each do |e|
  if e == "D" then
    input.sub!('a', 'a/3')
    exprs << input + " == 0"
  elsif e == "U"
    input.sub!('a', '(4*a+2)/3')
    exprs << input + " == 1"
  elsif e == "d"
    input.sub!('a', '(2*a-1)/3')
    exprs << input + " == 2"
  end  
end
puts exprs

s = 1000000000
a = 1
while true do
  a = s
  exprs.map {|e| eval e }
  puts exprs.inspect
end