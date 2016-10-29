class Hamming

  def self.compute(s1, s2)
    if s1 == s2
      return 0
    elsif s1 != s2
      return 1
    end
  end

end