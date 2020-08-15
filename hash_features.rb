#Print keys and values in key order
hash = { 3 => 'c', 1 => 'a', 2 => 'b'}
hash.keys.sort.each do |key|
  puts "#{key} => #{hash[key]}"
end

sorted_hash = {}
hash.keys.sort.each do |key|
  sorted_hash[key] = hash[key]
end
puts sorted_hash

# an alternative method to sort a hash
sorted_array = hash.sort do |(key1, val1), (key2, val2)|
  key1 <=> key2
end
#sorted_array will be of the form [['a', 1], ['b', 2]]
sorted_hash_2 = Hash[sorted_array]
puts sorted_hash_2

#create a method that sorts a hash in key descending order and returns the sorted hash
sorted_descending_array = hash.sort do |(key1, val1), (key2, val2)|
  key2 <=> key1
end
sorted_descending_hash = Hash[sorted_descending_array]
puts sorted_descending_hash

#another way to sort a hash in key descending order and return the sorted hash
def sort(hash)
  sorted = {}
  hash.keys.sort.reverse.each do |key|
    sorted[key] = hash[key]
  end
  sorted
end
puts sort(hash)

