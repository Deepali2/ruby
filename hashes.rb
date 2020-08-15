#creata a hash containing people and their current bank balances

bank_balance = {
  'Harry' => 1000,
  'Ron' => 2000,
  'Hagrid' => 3000,
  'Hermione' => 4000,
}

total = 0
bank_balance.each_pair do |name, balance|
  total += balance
  puts "#{name} : #{balance}"
end

puts "total money they have is #{total}"