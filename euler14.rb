class Chainer
  attr_accessor :prevChains
  
  def initialize
    @prevChains = [0]
  end
  
  def chain(n)
    return @prevChains[n] if n < @prevChains.length 
    
    counter = 0
    while n != 1 do
      if n % 2 == 0 then
        n /= 2
      else
        n = 3 * n + 1
      end
      counter+=1
      
      if n < @prevChains.length then
        @prevChains << (counter + @prevChains[n])
        return counter + @prevChains[n]
      end
    end
    @prevChains << counter
    return counter
  end
end


maxchain = 0
num = 0
c = Chainer.new
start = Time.new
1.upto(999999) do |n| 
  chained = c.chain(n)
  if (chained > maxchain) then
    num, maxchain = n, chained
  end
end
puts [maxchain, num, Time.new - start].inspect