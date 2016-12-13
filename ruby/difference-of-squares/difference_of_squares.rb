class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    sum = 0
    n = @n
    until n == 0
      sum += n
      n -= 1
    end
    return sum ** 2
  end

  def sum_of_squares
    sum = 0
    n = @n
    until n == 0
      sum += n**2
      n -= 1
    end
    return sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end