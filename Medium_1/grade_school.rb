class School
  def initialize
    @students = {}
  end

  def add(name, grade)
    if @students.key?(grade)
      @students[grade] << name
    else
      @students[grade] = [name]
    end
  end

  def to_h
    result = {}
    @students.keys.sort.each do |k|
      result[k] = @students[k].sort
    end
    result
  end

  def grade(grade)
    return [] unless @students.key?(grade)
    @students[grade]
  end
end
