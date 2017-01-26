class Grains
  def self.square(n, grains=1)
    return grains if n == 1
    self.square(n-1, grains*2)
  end
end