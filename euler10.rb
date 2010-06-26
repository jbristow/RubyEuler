require 'mathn'
puts "Started at #{Time.now}."
sum = Prime.instance.inject { |sum, n|
  break sum unless n < 2_000_000
  sum + n
}
puts "Finished at #{Time.now}."
puts "Sum is #{sum}."
