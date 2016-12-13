class Raindrops
  def self.convert(n)
    if n == 1
      return n.to_s
    elsif n == (n/7.0)*n
      return 'Plong'
    elsif n == (n/5.0)*n
      return 'Plang'
    elsif n == (n/3.0)*n
      return 'Pling'
    else 
      return n
    end
  end
end