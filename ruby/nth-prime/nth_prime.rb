require 'prime'

class Prime
  def self.nth(n)
    return (Prime.first n).pop
  end
end

