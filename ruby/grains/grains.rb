class Grains
  def self.square(n)
    return 1 if n == 1
    grains = 1
    until n == 0
      grains += grains*n
      n -= 1
    end
    return grains
  end
end