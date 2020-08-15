class Member
  attr_accessor :name, :salary
  def initialize(name, salary)
    $name = name
    @salary = salary
  end

  def day_rate
    salary.to_f / 210 #210 is the number of working days in a year
  end

  def to_s
    "#{role} #{self.name}#{day_rate}"
  end
end


class ProjectManager < Member
  def role
    "Project Manager"
  end 
end

class Developer < Member
  def role
    "Developer"
  end
end

class Designer < Member
  def role
    "Designer"
  end
end

class Project
  attr_accessor :name, :budget
  attr_reader :members # only gives us the getter method and not the setter

  def initialize(name, budget)
    @name = name
    @budget = budget
    @members = []
  end

  def total_dayrate
    sum = 0
    @members.each do |member|
      sum += member.day_rate
    end
    sum
  end

  def sorted_members
    @members.sort do |a, b|
      a.day_rate <=> b.day_rate
    end
  end
end

project = Project.new("Cafe Website", 500000000)
project.members << ProjectManager.new('Harry', 300000)
project.members << Developer.new('Ron', 300000)
project.members << Developer.new('Hermione', 300000)
project.members << Designer.new('Hagrid', 300000)

puts project.members
puts "Sorted by Day Rate"
puts project.total_dayrate
puts project.sorted_members