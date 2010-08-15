class NumPos
  attr_accessor :before, :after, :val
  def initialize(n)
    @val = n
    @before = Hash.new
    @after = Hash.new
  end

  def set_before(n)
    @before[n] = true
  end

  def set_after(n)
    @after[n] = true
  end

  def num_after
    @after.values.select{|e| e}.length
  end

  def num_before
    @before.values.select{|e| e}.length
  end

  def never_seen?
    self.num_after + self.num_before == 0
  end

  def inspect
    "#{@val}:B#{@before.keys.inspect}|A#{@after.keys.inspect}"
  end
end

def solver
  lines = []
  file = File.new("euler079.txt", "r")
  while line = file.gets do
    lines << line
  end
  file.close

  data = Hash.new
  0.upto(9) do |i|
    data[i] = NumPos.new i
  end
  lines.each do |line|
    nums = line.split('').map{|e| e.to_i}

    data[nums[0]].set_before(nums[1])
    data[nums[0]].set_before(nums[2])

    data[nums[1]].set_after(nums[0])
    data[nums[1]].set_before(nums[2])

    data[nums[2]].set_after(nums[0])
    data[nums[2]].set_after(nums[1])
  end

  data.reject! {|k,v| v.never_seen?}
  records = data.values.sort_by {|e| e.num_after}
  login = ""
  while records.length > 0 do
    first = records.shift
    login += first.val.to_s
    records.each {|e| e.after[first.val] = false }
  end
  puts login
end

require 'timer_utils'
run{solver}