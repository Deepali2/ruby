def string_methods(string)
  puts "reverse a string: #{string.reverse}"
  puts "uppercase: #{string.upcase}"
  puts "length: #{string.length}"
  puts "new string with first 10 characters: #{string[0..9]}"
  puts "last 2 characters: #{string[-2..-1]}"
  puts "5th character: #{string[4]}"
end

string_methods('The quick brown fox jumped over the lazy dog')