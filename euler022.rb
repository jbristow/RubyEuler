@A_VAL="A".unpack("C*")[0]

def solver
  file = File.new("names.txt", "r")
  line = file.gets
  file.close

  names = line.slice(1,line.length-2).split("\",\"")
  names = names.sort
  scored_names = names.map { |e| e.unpack("C*").map{|c| c-@A_VAL+1}.inject(:+)} .zip((1..names.length).to_a).map {|e| e[0] * e[1]}
  scored_names = scored_names
  puts scored_names.inject(:+)
end

require 'timer_utils'

run lambda{solver}