class School

  def initialize
    @roster = Hash.new([])
  end

  def students(grade)
    @roster[grade].sort
  end

  def add(name, grade)
    @roster[grade] += [name]
  end

  def students_by_grade
    display = []
    @roster.keys.sort.each do |key|
      display << {grade: key, students: students(key)}
    end
    display
  end

  def roster
    @roster
  end

end

module BookKeeping
  VERSION = 3
end