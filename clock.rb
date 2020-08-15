loop do 
  print "\r" + Time.now.strftime("%H:%M:%S on %B %d %Y") #\r is a specisl character called the return character or carriage return
  sleep(1)
end