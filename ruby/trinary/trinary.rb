class Trinary
  def initialize(num)
    @num = num
    @split_num = num.reverse.split('')
  end

  def to_decimal
    results_arr = []
    return 0 if @num.scan(/[012]/).length != @num.length
    @split_num.each_with_index do |num, idx|
      results_arr << num.to_i * 3**idx
    end
    results_arr.map(&:to_i).reduce(:+)
  end
end

module BookKeeping
  VERSION=1
end