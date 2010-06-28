def even(n)
  return n / 2
end

def odd(n)
  return 3*n + 1
end

def chain(n)
  counter = 0
  while n != 1 do
    if n % 2 == 0 then
      n = even(n)
    else
      n = odd(n)
    end
    counter+=1
  end
  return counter
end

maxchain = 0
(1..9999999).each {|n| maxchain = [maxchain, chain(n)]}