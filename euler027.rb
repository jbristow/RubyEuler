require 'generator'

def f(&block)
  f_n = Generator.new do |g|
    n = 0
    while true
      val = yield n
      g.yield val
      n+= 1

    end
  end
  return f_n
end

class Integer
  def prime?
    c = 2
    while c < self do
      return false if self % c == 0
      return true if c*c > self
      c+=1
    end
    return true
  end

  def prime_filtered?(primes)
    possible = self
    return true if primes.length == 0 && possible == 3

    primes.each do |prime|
      return true if prime * prime > possible
      return false if possible % prime == 0
    end

    return true
  end
end

def primes_upto(n)
  primes = []
  possible = 3
  while possible < n do
    primes << possible if possible.prime_filtered?(primes)
    possible += 2
  end
  primes
end

min = -1000
max = 1000

max_length = 0
prod = 0
list_asc = primes_upto(max)
list_desc = list_asc.reverse.map {|e| -e}
list = list_desc + [-1, 0, 1] + list_asc

list.each do |a|
  list.each do |b|
    c = f{|n| n**2+a*n+b }.take_while {|e| e > 0 && e.prime?}
    if c.length > max_length
      max_length = c.length
      prod = a * b
      puts "#{a}\t#{b}\t#{max_length}\t#{c.inspect}"
    end
  end
end
puts prod