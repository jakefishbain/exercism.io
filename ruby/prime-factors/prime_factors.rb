require 'prime'

class PrimeFactors
  def self.for(num, factors = [], count = 2) 
    return factors if num < count
    if Prime.prime?(count) && num%count === 0
      factors << count
      remainder = num/count
      self.for(remainder, factors, count)
    else
      count += 1
      self.for(num, factors, count)
    end
    factors
  end
end
