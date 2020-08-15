#create an array of users. Each user in the array should be represented by a hash.
#You can store the user's details such as name and email address using Symbols
#Search for a user by their name
#Print the email address of that user

users = [
  {name: 'Harry', email: 'harry@gmail.com'},
  {name: 'Ron', email: 'ron@gmail.com'},
  {name: 'Hermione', email: 'hermione@gmail.com'}
]

user = users.find do |user|
  user[:name] == 'Harry'
end
if user
  puts user[:email]
else
  puts "no user found"
end
