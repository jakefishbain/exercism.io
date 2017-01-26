class Year
  def self.leap?(n)
    if n/400.0 == (n/400.0).floor && n/100.0 == (n/100.0).floor
      return true
    elsif n/100.0 == (n/100.0).floor
      return false
    elsif n/4.0 == (n/4.0).floor
      return true
    end
  end
end