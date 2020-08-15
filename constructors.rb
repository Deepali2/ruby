class User
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

dan = User.new('Dan')
dan.name # => 'Dan'