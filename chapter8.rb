module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log("title is called")
    "A great movie"
  end
end

class User
  include Loggable

  def name
    log("name is called")
    "Alice"
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name

class Product
  extend Loggable

  def self.create_products(names)
    log("create_products is called")
  end
end

puts Product.create_products("DVD")
puts Product.log("hello")