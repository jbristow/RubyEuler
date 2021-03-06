$RUNS = 50

def run(n=$RUNS)

  times = []
  n.times {|i|
    start_t = Time.now
    yield
    end_t = Time.now
    times << (end_t - start_t)*1000.0
  }
  #times = times.delete_if {|i| i < 0}
  #puts times.inspect
  times.sort

  mean = times.inject{|a,c| a+c} / n

  puts("Mean:\t#{mean} ms");
  if (n % 2 == 0) then
    median = (times[times.length / 2 - 1] + times[times.length / 2]) / 2.0
  else
    median = times[times.length / 2];
  end
  puts("Median: #{median} ms");

end