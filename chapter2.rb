puts "こんにちは\nさようなら"

puts 'こんにちは\nさようなら'

name = 'Alice'
puts "Hello, #{name}"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

puts 'a' < 'b'
puts 'あいう' < 'かきく'
puts '一' < '二'

puts 1_000_000_000

puts 1.0 / 2

puts 1 / 2.to_f

puts 0.1 * 3.0
puts 0.1r * 3.0r
puts (0.1r * 3.0r).to_f

puts %q{He said, 'Don't speak!}

a = <<TEXT
長い
文章
を
かこめる
TEXT

puts a

def some_method
  <<~TEXT
    これはヒアドキュメントです
    内部文字列がインデントされる
  TEXT
end

puts some_method

a = "Ruby"

a.prepend(<<TEXT)
Java
PHP
TEXT
puts a
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

puts sprintf('%0.3f', 1.2)
puts '%0.3f' % 1.2

puts 2e-3

puts 1 && 2 && 3
puts 1 && nil && 3