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