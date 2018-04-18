class Array
  def keep(&block)
    arr = []
    self.map { |n| block.call(n) ? arr << n : nil }
    arr
  end

  def discard(&block)
    arr = []
    self.map { |n| block.call(n) ? nil : arr << n }
    arr
  end
end