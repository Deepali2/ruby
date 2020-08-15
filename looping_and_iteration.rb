3.times do
  puts "(Cheer!"
end

5.upto(10) do |num|
  puts num
end

result = 0
1.upto(10) do |num|
  result += num
end
puts result

50.downto(10) do |num|
  puts num
end

# sum the numbers from 1 to 100
sum = 0
1.upto(100) do |i|
  sum += i
end
puts sum

#given an array containing 10 items, delete the first item and print it. Repeat it three times
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
3.times do
  puts arr.delete_at(0)  
end
