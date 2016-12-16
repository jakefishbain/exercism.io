require 'prime'

class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    primes = []
    until @n < 2
      primes << @n if Prime.prime?(@n)
      @n -= 1
    end
    return primes.reverse
  end

end