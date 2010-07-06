max = 50000

def tri(n) 
  return n * (n+1) / 2
end

def pen(n)
  return n * (3 * n - 1) / 2
end

def hex(n)
  return n * (2 * n - 1)
end

t = 286
p = t
h = t

while !(tri(t) == pen(p) && pen(p) == hex(h)) do
  puts [tri(t),pen(p),hex(h)].inspect
  if (tri(t) < pen(p) && tri(t) <= hex(h)) || (tri(t) <= pen(p) && tri(t) < hex(h)) then
    t+=1
  elsif (pen(p) < hex(h) && pen(p) <= tri(t)) || (pen(p) <= hex(h) && pen(p) < tri(t)) then
    p+=1
  elsif (hex(h) < tri(t) && hex(h) <= pen(p)) || (hex(h) <= tri(t) && hex(h) < pen(p)) then
    h+=1
  end
  puts [tri(t),pen(p),hex(h)].inspect
end