class Chainer
  attr_accessor :prevChains
  def initialize
    self.prevChains = {1 => 1}
  end

  def chain(n)
    
    return self.prevChains[n] if self.prevChains.has_key?(n)  
    
    return @prevChains[n] if n < @prevChains.length

    counter = 0
    seen = [n]
    while not self.prevChains.has_key?(n) do
      if n % 2 == 0 then
        n /= 2
      else
        n = 3 * n + 1
      end
      counter+=1
      seen << n
    end
    seen.reverse.each
    return counter
  end
end

def solver
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
  puts [maxchain, num].inspect
end

require 'timer_utils'
run lambda{solver}