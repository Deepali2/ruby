# #we can use ranges to do iteration. example: instead of using upto
# # two dots means inclusive range meaning second number is included example 10 below
# (1..10).each do |num|
#   puts num
# end

# # if we use three dots then the range becomes exclusive meaning does not include the second number

# # to convert a range into an array
# # a range of floats cannot be converted into an array
# array = (1...5).to_a
# puts array

# # to get the values at the beginning and at the end of a range
# a = 1..10
# puts a.end   #10
# puts a.begin #1
# puts a.exclude_end? #false

# #print every character from A-K
# ('A'..'K').each do |character|
#   puts character
# end
# # another way
# ('A'..'K').each { |char| puts char }

# #using a range, write a method to determine if a given float number is between two values
# def included?(range, number)
#   if range.exclude_end?
#     number >= range.begin && number < range.end
#   else
#     number >= range.begin && number <= range.end
#   end
# end

# # anothew way to achieve the same result as above
# def included?(range, number)
#   range.cover?(number)
# end

# puts included?(1.0..10.9, 5.7)
# puts included?(1.0..10.9, 11.1)
# puts included?(1.0...10.9, 10.9)

# # print all multiples of 7 upto 140 using a range
# 1.upto(20) do |num|
#   puts num * 7
# end

# write a method that returns the intersection of two ranges as a Range or nil if they do not intersect(overlap)
def intersect?(range1, range2)
  if range1.begin < range2.begin
    if range1.end < range2.begin
      nil
    else
     (range2.begin..range1.end)
    end
  else
    if range1.begin > range2.end
      nil
    else
      (range1.begin..range2.end)
    end
  end
