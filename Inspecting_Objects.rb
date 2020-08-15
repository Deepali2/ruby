class User
  attr_accessor :name, :email, :age

  def initialize(name, email, age)
    self.name = name
    self.email = email
    self.age = age
  end

  def celebrate_birthday!
    puts "Happy Birthday!"
    self.age += 1
  end

  def to_s
    self.name
  end

  #inspect is useful when debugging own code
  def inspect
    "#{self.name}, #{self.email}, #{self.age}"
  end
end

user = User.new('Jill', 'jill@example.com', 21)
puts user # puts will automatically call the to_s method
p user