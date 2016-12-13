class Raindrops
  def self.convert(n)
    if n == 1
      return n.to_s
    end

    str = ''
    str += 'Pling' if div3(n)
    str += 'Plang' if div5(n)
    str += 'Plong' if div7(n)

    if str.length <= 0
      return str
    else 
      return n.to_s
    end
  end

  def self.div7(n)
    n/7 == (n/7.0)
  end

  def self.div5(n)
    n/5 == (n/5.0)
  end

  def self.div3(n)
    n/3 == (n/3.0)
  end
end