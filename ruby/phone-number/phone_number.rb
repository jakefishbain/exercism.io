class PhoneNumber
  def self.clean(number)
    clean_num = number.gsub(/^1|\D+1|\D/, '')
    valid?(clean_num) ? clean_num : nil
  end

  def self.valid?(num)
    (2..9).to_a.include?(num[3].to_i) &&
    num.length === 10
  end
end

module BookKeeping
  VERSION = 2
end
