class Robot
  attr_reader :name
  
  def initialize
    @name = name || new_name
  end

  def new_name 
    string = ''
    2.times{ string += ('A'..'Z').to_a.sample }
    3.times{ string += rand(0..9).to_s }
    return string
  end

end