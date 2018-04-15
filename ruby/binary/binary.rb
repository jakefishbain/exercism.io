class Binary
  def self.to_decimal(str)
    raise ArgumentError unless valid?(str)
    arr = str.split('').map(&:to_i)
    final = 0
    arr.each_with_index do |num, idx|
      next if num === 0
      multpilier = arr.length - (idx + 1)
      final += num * (2**multpilier)
    end
    final
  end 

  def self.valid?(str)
    if str[0] === '2' || str =~ /[A-z]|['2']/
      return false
    else
      true
    end
  end
end

module BookKeeping
  VERSION = 3
end

# puts Binary.to_decimal('10nope10')
# puts Binary.to_decimal('101')
