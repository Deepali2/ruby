def arr_methods(arr)
  puts "retrieves the 3rd element: #{arr[2]}"
  puts "retreive first 2 elements: #{arr[0, 2]}"
  puts "retreive the last element: #{arr[-1]}"
  puts "delete the duplicate c characte: #{arr.delete_at(2)}"
  puts arr
  puts "add the character g to the end of the array: #{arr<<3}"
end

# arr_methods(['a', 'b', 'c', 'c', 'd', 'e', 'f'])

input = <<-STR
Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

$words = input.split(/\s+|\.|\,/).select { |w| !w.empty? } # This uses a Regular Expression (we'll learn about those later)

# $words is a special variable called a global variable (indicated by the $)
# It is an array of all the words in the input string and you can use it to perform this exercise
#
# For example to access the 5th word in the array do:
#
#    $words[4]
#
# Your code starts here

#prints out one word at a time from the array
# for word in $words
#   puts word
# end

# another way to print one word at a time
# $words.each do |word|
#   puts word
# end

#sorts the words and prints again
# $words.sort.each do |word|
#   puts word
# end

#sorting the words using the bang method so that the original array gets modified
# $words.sort!
# $words.each do |word|
#   puts word
# end

#sorts, reverse each word and print again
# $words.sort.each do |word|
#   puts word.reverse
# end

#add an extra word, remove the first element, resort, print
$words << 'AbraCadabra'
$words.delete_at(0)
$words.sort.each do |word|
  puts word
end


