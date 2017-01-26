class Year
  def self.leap?(n)
    return false if n/100.0 == (n/100.0).floor
    return true if n/4.0 == (n/4.0).floor
  end
end