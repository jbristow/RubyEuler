lines = []
file = File.new("triangle.txt", "r")
while line = file.gets do
  lines << line 
end
file.close

pyramid = lines.map{|e| e.split(' ')}

def last_row?(row,pyramid)
  return pyramid.length <= row+1 
end
def has_right(row,pyramid)
  return pyramid.length > row+1
end

def process_node(row, n, sum, pyramid)
  current = pyramid[row][n].to_i
  if !last_row?(row,pyramid) then
    left = process_node(row+1,n,current+sum,pyramid)
    right = process_node(row+1,n+1,current+sum,pyramid)
  else
    return sum+current
  end
end

puts process_node(0,0,0,pyramid)