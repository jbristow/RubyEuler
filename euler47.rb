require 'mathn'
max = 1000
pl = Prime.instance().take max


class Integer
  def pfs
    return Prime.instance().take_while {|p| p <= self}.delete_if {|e| self % e != 0}
  end
end

c = 2*3*5*7
found = false
while !found do 
  a = [c,c+1,c+2,c+3]
  t = a.map {|e| e.pfs.length == 4}
  found = t.inject(true) {|a,c| a&&c}
  if found then
    puts a.inspect
    break
  else
    puts a.zip(t).inspect
  end
  c+=1
  while c.pfs.length != 4 || (c+1).pfs.length != 4  do
    c+=1
  end
end

