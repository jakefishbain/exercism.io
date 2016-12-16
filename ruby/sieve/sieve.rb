require 'prime'

class Sieve(n)
  primes = []
  until n <= 2
    primes << n if Prime.prime?(n)
    n -= 1
  end
  return primes
end