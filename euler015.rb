def solver

  list_a = [1,1]
  2.upto(40) do
    list_b = [1]
    1.upto(list_a.length-1) {|e| list_b << list_a[e]+list_a[e-1]}
    list_b << 1
    list_a = list_b
  end
  puts list_a[list_a.length/2]
end

solver