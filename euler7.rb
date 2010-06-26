primes = [2]
numPrimes = 10001

curr = 3

while (primes.length < numPrimes) do
  divved_by = primes.delete_if do |i| curr % i != 0 end
  primes << curr if divved_by.length < 1
  curr+=2
end
print primes.last