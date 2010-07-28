class Integer
  def prime?(primes)
    return true unless primes.index(self).nil?
    return true if self == 2
    primes.each do |prime|
      if self % prime == 0 then
        return false
      elsif prime * prime > self then
        primes << self
        return true
      end
    end
    return true
  end

  def rotate(ln)
    curr = self.to_s.split(//)
    while (curr.length < ln) do
      curr.unshift("0");
    end
    first = curr.shift
    (curr.join() + first).to_i
  end
end

require 'set'

primes = [2]
circular =  Set.new [2]
c= 3
(3..1_000_000).step(2) do |i|
  if (circular.to_a.index(i).nil? && i.prime?(primes)) then
    current = [i]
    all_prime = true
    rotated = i.rotate(i.to_s.length)
    while (rotated != i) do
      if rotated.prime?(primes) then
        current << rotated
      else
        all_prime = false
      end
      rotated = rotated.rotate(i.to_s.length)
    end
    if all_prime then
      puts circular.length
      circular = circular | current
    end
  end
end
puts circular.inspect