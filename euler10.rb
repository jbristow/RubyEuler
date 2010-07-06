require 'mathn'
start =  Time.now
sum = Prime.instance.inject { |sum, n|
  break sum unless n < 2_000_000
  sum + n
}
puts "Finished at #{(Time.now - start)}."
puts "Sum is #{sum}."
