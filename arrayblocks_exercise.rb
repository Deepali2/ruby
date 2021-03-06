# string = "The quick brown fox jumped over the lazy dog"
# arr = string.split()
# unique = arr.uniq()
# puts unique

input = <<-STR
Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where sheâ€™s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Googleâ€™s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

$words = input.split(/\s+|\.|\,/).select { |w| !w.empty? } # This uses a Regular Expression (we'll learn about those later)

def frequency(word)
  arr = $words.select do |sample|
    word == sample
  end
  arr.size
end

frequencies = $words.uniq.map do |word|
  [ word, frequency(word) ]
end

sorted = frequencies.sort do |a, b|
  b[-1] <=> a[-1]
end

# sorted.each do |pair|
#   puts "#{pair[0]} #{pair[1]} occurences"
# end

sorted.each_with_index do |pair, index|
  puts "#{index + 1}: #{pair[0]} #{pair[-1]} occurences"
end