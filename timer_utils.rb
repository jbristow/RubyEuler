$RUNS = 50

def run(solve)
  times = []
  $RUNS.times {|i|
    puts "Run #{i}:"
    start_t = Time.now
    solve.call
    end_t = Time.now
    times << (end_t - start_t)*1000.0
    puts "*** #{(end_t-start_t)*1000.0} ms ***\n\n"
  }
  #times = times.delete_if {|i| i < 0}
  puts times.inspect
  times.sort

  mean = times.inject{|a,c| a+c} / $RUNS

  puts("Mean:\t#{mean}");
  if (times.length % 2 == 0) then
    median = (times[times.length / 2 - 1] + times[times.length / 2]) / 2.0
  else
    median = times[times.length / 2];
  end
  puts("Median: #{median}");

end