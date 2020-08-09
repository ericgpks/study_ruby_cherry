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
buy_burger2('fish', drink: true)