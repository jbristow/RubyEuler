class PermutationGenerator
  def initialize(n)
    @a = []
    (0...n).each {|i| @a << i}
    @total = getFactorial(n);
    @numLeft = @total
  end

  def reset
    (0...@a.length).each {|i| @a[i] = i}
    @numLeft = @total
  end

  def hasMore?
    @numLeft > 0
  end

  def getFactorial(n)
    fact = 1
    n.downto(1) {|i| fact *= i}
    fact
  end

  def getNext
    if @numLeft == @total then
      @numLeft -= 1
      return @a
    end

    j = @a.length - 2

    while @a[j] > @a[j + 1] do
      j-=1
    end

    k = @a.length - 1;
    while @a[j] > @a[k] do
      k-=1
    end

    @a[k],@a[j] = @a[j],@a[k]

    r = @a.length - 1;
    s = j + 1;

    while (r > s) do
      @a[s], @a[r] = @a[r], @a[s]
      r-=1
      s+=1
    end

    @numLeft -= 1
    return @a

  end
end

def prime?(n)
  return false if n == 1
  return false if n % 2 == 0
  (3...Math.sqrt(n)).step(2) {|e| return false if n % e == 0}
  return true
end

digits = "123456789".split(//)
permutations = []
(2..9).each do |num_digits|
  gen = PermutationGenerator.new(num_digits)

  while gen.hasMore? do
    permutations << gen.getNext.map{|i| i+1}.join().to_i
  end
end

puts permutations.select {|e| prime?(e)}.last

