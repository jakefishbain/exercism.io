class Hamming

  def self.compute(s1, s2)
    if s1 == s2
      return 0
    else
      pairs = s1.chars.zip(s2.chars)
      sum = 0
      pairs.each do |pair|
        if pair[0] != pair[1]
          sum += 1
        end
      end
      return sum
    end
  end

end