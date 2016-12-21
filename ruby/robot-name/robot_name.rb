class Robot
  attr_accessor :name
  
  def initialize
    @name = name
  end

  def name
    string = ''
    2.times{ string += ('A'..'Z').to_a.sample }
    3.times{ string += rand(0..9).to_s }
    return string
  end

end