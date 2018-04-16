class SumOfMultiples
  def initialize(*args)
    @collection = []
    @args = args
  end

  def to(max)
    return 0 if @args.empty?
    @args.each do |arg|
      divisor = max/arg + 1
      divisor.times do |n| 
        @collection << arg * n unless arg * n === max
      end
    end
    @collection.uniq.reduce(:+)
  end

end

module BookKeeping
  VERSION = 2
end
