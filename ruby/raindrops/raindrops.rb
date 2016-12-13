class Raindrops
  def self.convert(n)
    if n == 1
      return n.to_s
    elsif n/7 == (n/7.0)
      return 'Plong'
    elsif n/5 == (n/5.0)
      return 'Plang'
    elsif n/3 == (n/3.0)
      return 'Pling'
    else 
      return n.to_s
    end
  end
end