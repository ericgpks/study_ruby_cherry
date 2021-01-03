class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{name}."
  end

  def hi
    "Hi, I am #{self.name}."
  end

  def my_name
    "My name is #{@name}"
  end

  def rename_to_bob
    name = "Bob"

  end

  def rename_to_carol
    self.name = "Carol"
  end

  def rename_to_dave
    @name = "Dave"
  end
end

user = User.new('Alice')
puts user.hello
puts user.hi
puts user.my_name
user.rename_to_bob
puts user.name
user.rename_to_carol
puts user.name
user.rename_to_dave
puts user.name

