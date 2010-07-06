class Array
  
  def each_permutation(&blockproc)
    
    a = []
    self.each do |c|
      a.push(c)
    end
    n = a.length
    p = Array.new(n+1,0)
    i = 1
    
    blockproc.call(a) 
    
    while i < n do
      
      if p[i] < i
        
        j = 0
        j = p[i] if (i % 2) == 1
        t = a[j]
        a[j] = a[i]
        a[i] = t
        
        p[i] = p[i] + 1
        i = 1
        
        blockproc.call(a) 
        
      else
        
        p[i] = 0
        i = i + 1
        
      end
      
    end
    
  end
end

seed = "0123456789"
permutations = []

seed.split('').each_permutation{|e| permutations << e.join('')}
permutations.sort!
puts permutations[999999]