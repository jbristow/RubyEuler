lines = []
file = File.new("names.txt", "r")
line = file.gets
file.close

names = line.slice(1,line.length-2).split("\",\"")
names = names.sort
scored_names = names.map {|e| e.split('').map {|c| c.ord - 'A'.ord + 1}.inject(0) {|a,c| a + c}}
scored_names = scored_names.zip((1..names.length)).map {|e| e[0] * e[1]}
puts scored_names.inject(0) {|a,c| a + c} 