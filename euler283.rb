perimeters = []
1.upto(1000) do |a|
  a.upto(1000) do |b|
    b.upto(1000) do |c|
      if ((a+b-c)*(a-b+c)*(-a+b+c)*(a+b+c)) > 0 then
        ratio = 0.25 * Math.sqrt((a+b-c)*(a-b+c)*(-a+b+c)*(a+b+c)) / (a+b+c)
        perimeters << a+b+c if ratio >= 1000
        puts [ratio, a+b+c, 0.25 * Math.sqrt((a+b-c)*(a-b+c)*(-a+b+c)*(a+b+c))].inspect
      end
    end
  end
end
puts perimeters.inspect

