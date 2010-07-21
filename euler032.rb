require "set"

def solver
  possible = "123456789".split(//)
  prods = Set.new
  arrangements = []
  1.upto(4) do |a|
    (a+1).upto(8-a) do |b|
      c = 9-a-b
      arrangements << [a,b,c]
    end
  end

  finals = []
  possible.permutation(possible.length).each do |p|
    arrangements.each do |arr|
      a_items = p.combination(arr[0])
      a_items.each do |a_item|
        b_items = (p-a_item).combination(arr[1])
        b_items.each do |b_item|
          c_item = ((p-a_item)-b_item)
          a = a_item.join().to_i
          b = b_item.join().to_i
          c = c_item.join().to_i
          prods << c if a*b==c
        end
      end
    end
  end
  finals.map! { |e| [e[0]*e[1],e[2]]}
  puts finals.select{|e| e}.inspect
  puts prods.inspect
end

solver