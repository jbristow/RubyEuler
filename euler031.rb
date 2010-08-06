COINS = [200,100,50,20,10,5,2,1]

def ways_to_make_change(amount,lastcoin)
  answer=0
  COINS.select{|e| e <= amount && e <= lastcoin}.each do |coin|
    if amount-coin == 0 then
      answer += 1
    else
      answer += ways_to_make_change(amount-coin,coin)
    end
  end
  return answer
end

def solver
  puts ways_to_make_change(200,COINS.max)
end

require 'timer_utils'

run(5){solver}
#  73682
#  Mean: 15523.9046 ms
#  Median: 16921.156 ms