class School
  attr_accessor :roster, :school_name
  attr_reader :grade

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{|k, v| k[v] = []}
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(n)
    @roster[n]
  end

  def sort
  @roster[grade].sort_by {|k, v| v}.to_h
  @roster.sort_by {|k,v| k}.to_h
  end
end
