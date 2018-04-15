class RunLengthEncoding

  def self.encode(input)
    split = input.split('')
    str = ''
    count = 1
    split.each_with_index do |let, idx| 
      if let === split[idx + 1]
        count += 1
      else
        str += count.to_s if count != 1
        str += let
        count = 1 
      end
      str
    end
    str
  end

  def self.decode(input)
    arr = input.split(/(\d+)|(|w+)/).reject(&:empty?)
    str = ''
    arr.each_with_index do |char, idx|
      if char.to_i === 0 && arr[idx-1].to_i === 0
        str += char
      else
        str = generate_str(str, arr[idx-1].to_i, char)
      end
    end
    str
  end

  private

  def self.generate_str(str = '' , num, char)
    num.times { |num| str += char }
    str
  end

end

module BookKeeping
  VERSION = 2
end

# puts RunLengthEncoding.encode('abbcc')
# puts RunLengthEncoding.decode('12WB12W3B24WB')