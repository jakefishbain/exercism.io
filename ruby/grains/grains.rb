class Grains
  def self.square(n, grains=1)
    raise ArgumentError if n == 0 || n > 64
    return grains if n == 1
    self.square(n-1, grains*2)
  end

  def self.total
    total = 0
    n = 1
    until n > 64
      total += self.square(n)
      n += 1
    end
    return total
  end
end