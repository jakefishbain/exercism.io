class Bob
  def self.hey(remark)
    if silence?(remark)
      return 'Fine. Be that way!'
    elsif shouting?(remark)
      return 'Whoa, chill out!'
    elsif asking?(remark)
      return 'Sure.'
    else
      return 'Whatever.'
    end
  end

  def self.shouting?(remark)
    remark == remark.upcase && remark != remark.downcase
  end

  def self.asking?(remark)
    remark.end_with?('?')
  end

  def self.silence?(remark)
    remark.strip.empty?
  end
end
