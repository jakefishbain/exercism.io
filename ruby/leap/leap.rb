class Year
  def self.leap?(n)
    return true if n/4.0 == (n/4.0).floor
  end
end