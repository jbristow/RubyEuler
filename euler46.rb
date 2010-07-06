require 'mathn.rb'
max = 10000
odds = (3..max).step(2).to_a
primes = Prime.instance().take_while {|i| i < max}.delete_if {|i| i % 2 != 1}

puts odds.inspect
puts primes.inspect

primes.each {|e| odds.delete(e)}
puts odds.inspect

odds.each do |o|
  ps = primes.take_while {|p| p < o}
  ps = ps.map {|e| (Math.sqrt((o - e)/2.0))%1.0==0.0}
  if !ps.inject(false) {|a,c| a || c} then
    puts o 
    break
  end
end