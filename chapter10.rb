def greeting
  puts "おはよう"
  yield
  puts "こんばんは"
end

greeting do
  puts "こんにちは"
end

def greeting_ja(&block)
  texts = ["おはよう", "こんにちは", "こんばんは"]
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ["good morning", "good afternoon", "good evening"]
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text.upcase
end

add_proc = Proc.new{ |a, b| a + b }
puts add_proc.call(10, 20)