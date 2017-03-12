class Bob
  def self.hey(remark)
    if remark.split('').last == '?'
      return 'Sure.'
    elsif remark == remark.upcase
      return 'Whoa, chill out!'
    else
      return 'Whatever.'
    end
  end
end
