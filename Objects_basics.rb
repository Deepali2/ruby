#Create a User class that has name, email and age attributes. 
# Create an "instance" of the user, set its attributes and then print them out

class User
  attr_accessor :email, :age #attr_accessor allows us to specify an attribute for an object
  # attr_accessor: email
  # attr_accessor: age

  def initialize(name, email)
    self.name = name
    self.email = email
  end

  def to_s
    "#{self.name}, #{self.age}, #{self.email}"
  end
  #setter
  def name=(name)
    @name = name.downcase
  end
 #getter
  def name
    @name
  end

  def print
    puts "#{self.name}"
    puts "#{self.age}"
    puts "#{self.email}"
  end
  def happy_birthday!
    puts "Happy Birthday!"
    self.age += 1
  end
end

#we can create a specific object from our template (Class). This is called an "instance".
# mickey = User.new #creating a class is called instantiating
#setters on the object
# mickey.name = 'mickey'
# mickey.email = 'mickey@gmail.com'
# mickey.age = 20

mickey = User.new('Jill', 'jill@example.com')
mickey.age = 48
#getters on the object
# puts mickey.name
# puts mickey.email
# puts mickey.age
mickey.print
puts mickey.age
mickey.happy_birthday!
puts mickey.age

