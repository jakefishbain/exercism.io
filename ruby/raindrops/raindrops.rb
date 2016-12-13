class Raindrops
  def self.convert(n)
    if n == 1
      return n.to_s
    elsif n/7 == (n/7)*n
      return 'Plong'
    elsif n/5 == (n/5)*n
      return 'Plang'
    elsif n/3 == (n/3)*n
      return 'Pling'
    else 
      return n
    end
  end
end