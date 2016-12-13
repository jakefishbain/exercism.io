class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    sum = 0
    until @n == 0
      sum += @n
      @n -= 1
    end
    return sum ** 2
  end
  
end