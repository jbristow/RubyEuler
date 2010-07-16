def solver
  ones = ["","one", "two", "three", "four", "five", "six", "seven", "eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  tens = ["","ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  hundred = "hundred"
  and_ = "and"
  thousand = "thousand"
  
  sum = ""
  1.upto(1000) do |i|
    curr = i
    out = ""
    if (curr > 999) then
      out += ones[curr/1000] + thousand
      curr = curr%1000
    end
    if (curr > 99) then
      out += ones[curr/100] + hundred
      curr = curr%100
      out += and_ if curr != 0
    end
    if (curr >= 20) then
      out += tens[curr/10]
      curr = curr%10
      out += ones[curr]
    else 
      out += ones[curr]
    end
    sum += out
  end
  puts sum.length
end

require 'timer_utils'
run lambda{solver}