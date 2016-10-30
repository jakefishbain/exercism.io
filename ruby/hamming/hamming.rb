class Hamming

  def self.compute(s1, s2)

    raise ArgumentError unless s1.length == s2.length
    return 0 if s1 == s2
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