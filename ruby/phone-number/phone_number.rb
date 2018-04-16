class PhoneNumber
  def self.clean(number)
    arr = []
    num_arr = number.split('')
    num_arr.each do |char| 
      arr << char if (char =~ /\d/) === 0
    end
    arr.shift if arr[0] === '1'
    arr.join
  end
end

module BookKeeping
  VERSION = 2
end

num = "+1 (223) 456-7890"
p PhoneNumber.clean(num)