require "mathn"
def solver
  puts (1..100).reduce(:*).to_s.split(//).inject(0) {|a,c| a + c.to_i}
end

solver