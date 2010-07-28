def solver
  solutions = []
  1.upto(9) do |a|
    1.upto(9) do |b|
      1.upto(9) do |c|
        x = a * 10 + b
        y = b * 10 + c
        solutions << [x,y] if (x*1.0 / y * 1.0 ) == ( a * 1.0 / c * 1.0) && x != y
      end
    end
  end
  product = solutions.inject([1,1]) {|a,c| [a[0] * c[0], a[1] * c[1]]}

  answer = product[1]
  while answer % product[0] == 0 do
    answer /= product[0]
  end
  puts answer
end

require 'timer_utils'

run lambda{solver}