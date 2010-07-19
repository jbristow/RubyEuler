require 'set'

def solver
  answers=Set.new
  2.upto(100) do |a|
    2.upto(100) do |b|
      answers.add(a**b)
    end
  end
  puts answers.length
end

require 'timer_utils'

run lambda{solver}