# #to find an element starting with the letter "o" and return an array with that element
# results = ['gum', 'pine', 'palm', 'olive'].find do |tree|
#   tree[0] == 'o'
# end
# puts results


# to get an array with all the elements pertaining to a condition
# results = ['gum', 'pine', 'palm', 'olive'].select do |tree|
#   tree.length > 3
# end
# puts results


# # mapping
# birds = %w(magpie bower crow eagle).map do |bird|
#   bird.upcase
# end
# puts birds

# #sorting with some other condition using the comparison operator <=> for sorting also called the spaceship operator
## <=> returns 0 is the two values compared are equal, -1 is the first is less than than the second, 1 is 1st is greater than the second

# sorted = %w(holden mitsubishi ford toyota honda).sort do |a, b|
#   a.length <=> b.length
# end
# # => ['ford', 'honda', 'holden', toyota]
# puts sorted


# #each with index
# arr = %w(labrador shepherd pug staffy)
# arr.each_with_index do |breed, index|
#   puts "#{index}: #{breed}"
# end

#arrays can contain other arrays
# arr = [['cat', 13], ['dog', 9]]