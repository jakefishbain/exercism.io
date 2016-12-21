class Robot
  attr_reader :name
  NAMES_REGISTRY = []

  def initialize
    @name = new_name
  end

  def new_name  
    robot_name = ''
    2.times{ robot_name += ('A'..'Z').to_a.sample }
    3.times{ robot_name += rand(0..9).to_s }
    NAMES_REGISTRY << robot_name
    return robot_name
  end

  def reset
    @name = new_name
  end

end

# a = Robot.new
# b = Robot.new
# c = Robot.new