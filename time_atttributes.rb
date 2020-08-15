time = Time.now
time.day
time.month
time.year
time.hour
time.min
time.sec
time.monday?
puts time.strftime("%B %d, %Y") #string format time

puts time.strftime("%H:%M") #gives time in the 24 hour format

puts time.strftime("%I:%M %P") #I represents 24 hour time. M is the meridian indicator(am, pm)

#using time constructor
Time.new(2024)
Time.new(2024, 10)
Time.new(2024, 10, 31)
Time.new(2024, 10, 31, 2, 2, 2)

my_bday = Time.new(1971, 12, 1)
himanshu+bday = Time.new(1969, 11, 16)
our_marriage = Time.new(1993, 12, 8, 20,18 )  #8:18pm is 20, 18

#seconds since the epoch
Time.now.to_i #time on most modern computers is stored as the number of seconds since Jan1 1970 00:00 (epoch)

#number of years since the epoch
Time.now.to_i / (60 * 60 * 24 * 365.0)

#time 10 seconds ago
Time.now - 10

#Sleep command
sleep(n) #sleep for n-seconds
sleep # sleep until a key is pressed. This can be dangerous. Avoid using it