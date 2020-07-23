a = [1, 2, 3]
a[4] = 50
p a
a << 100
p a
a.delete_at(3)
p a

c, d = 100, 200
puts c
puts d

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}、余り=#{quo_rem[1]}"
quotient, remainder = 14.divmod(3)
puts "商=#{quotient}、余り=#{remainder}"

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
p a

numbers = [1, 2, 3]
new_numbers = numbers.map{ |n| n * 10 }
p new_numbers

a = ["1", "2", "3"]
a = a.map(&:to_i)
p a

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select{ |n| n.even? }
p even_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find{ |n| n.even? }
p even_number

numbers = [1, 2, 3, 4]
sum = numbers.inject(2){ |result, n| result + n}
p sum

p '0'.rjust(5)
p '0'.rjust(5, '0')
p '0'.rjust(5, '_')
p 0.to_s(16).rjust(2, '0')
p 255.to_s(16).rjust(2, '0')

a = [1, 2, 3, 4, 5]
p a[1, 3]
p a.values_at(0, 3, 4)
p a[a.size - 1]
p a[-1]
p a[-2]
p a[-2, 2]
p a.last
p a.last(2)
p a.first
p a.first(2)
a[-3] = 10
p a
a[1, 3] = 100
p a
a = []
a.push(1000)
p a
a.push(2, 3)
p a

a = [1, 2, 3, 1, 2, 3]
p a.delete(2)
p a

a = [1, 2]
b = [3, 4]
p a + b
p a.concat(b)
p a
p b

# a = Set.new([1, 2, 3])

e, *f = 100, 200, 300
p e
p f

a = []
b = [2, 3]
a.push(1)
p a
a.push(b)
p a

a = []
b = [2, 3]
a.push(1)
p a
a.push(*b)
p a

p %w!apple melon peach!

p "Ruby".chars

p "Ruby, Java, PHP".split(",")

fruits = ['apple', 'orange', 'peach']
fruits.each_with_index do |fruit, i|
  p "#{i}:#{fruit}"
end
fruits.map.with_index do |fruit, i|
  p "#{i}::#{fruit}"
end
fruits.each.with_index(1) do |fruit, i|
  p "#{i}:::#{fruit}"
end

dimentions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimentions.each do |length, height|
  areas << length * height
end
p areas

dimentions.each_with_index do |(length, width), i|
  p "length: #{length}, width: #{width}, i: #{i}"
end

numbers = [1, 2, 3, 4, 5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end

p "---------------"
numbers = numbers.shuffle
numbers.each do |n|
  puts n
  break if n == 5
end

p "---------------"
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end


fruits = ["apple", "orange", "grape"]
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruits}, #{n}"
    break if n == 3
  end
end

p "---------------------"
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == "orange" && n == 3
        throw :done
      end
    end
  end
end

p "------------------"
fruits.each do |fruit|
  numbers.each do |n|
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end

p "---------------"
foods = ["bellpepper", "tomato", "eggplant"]
count = 0
foods.each do |food|
  print "Do you like to have #{food}？"
  answer = "NO"
  puts answer

  count += 1
  redo if answer != "YES" && count < 2

  count = 0
end