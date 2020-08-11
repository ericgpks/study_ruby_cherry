currencies = {'Japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'}
currencies['italy'] = 'euro'
p currencies
currencies['Japan'] = '円'
p currencies
p currencies['india']
p currencies['brazil']

currencies.each do |key, value|
  puts "#{key} : #{value}"
end

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} :: #{value}"
end

currencies = {'Japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'}
a = currencies.delete('italy') { |key| "Not Found #{key}" }
p a

currencies = { :japan => 'yen', :us => 'doller', :india => 'rupee'}
p currencies
p currencies[:india]
currencies[:italy] = 'euro'
p currencies

currencies = { japan: 'yen', us: 'doller', india: 'rupee'}
p currencies


def buy_burger(menu, drink: true, potato: true)

end

buy_burger('cheese', drink: true, potato: true)
buy_burger('cheese', potato: true)
buy_burger('fish', potato: true, drink: true)
# buy_burger('fish', salad: true)


def buy_burger2(menu, drink:, potato:)

end

buy_burger2('fish', drink: true, potato: true)
# buy_burger2('fish', drink: true)

currencies = { japan: 'yen', us: 'doller', india: 'rupee'}
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)
p currencies.key?(:japan)
p currencies.include?(:japan)
p currencies.member?(:japan)

h = { us: 'dollar', india: 'rupee' }
h = { japan: 'yen', **h }
p h
h = { italy: 'euro'}.merge(h)
p h
array = h.to_a
p array
hash = array.to_h
p hash

p %s!ruby is fun!
p %s(ruby is fun)

a = nil
p a&.upcase
a = 'b'
p a&.upcase

limit = 10
limit ||= 10
p limit

