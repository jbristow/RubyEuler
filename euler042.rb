lines = []
file = File.new("euler042.txt", "r")
line = file.gets
file.close

words = line.split('","')

first = words[0].split('')
first.shift
words[0]=first.join

last = words[-1].split('')
last.pop
words[-1]= last.join

def triangle?(a)
  (0.5 * (Math.sqrt(8*a+1)-1)) % 1 == 0
end

tri_words = 0
words.each do |word|
  chars = []
  word.each_byte { |e| chars << e-64}
  wsum = chars.inject(:+)
  tri_words += 1 if triangle?(wsum)
end
puts tri_words
