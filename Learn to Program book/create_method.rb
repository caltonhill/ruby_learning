#Chapter 9. Creating methods.
def say_arse
  puts 'aaarrrrsee!'
end
say_arse
say_arse
puts 'blah-blah'
say_arse
say_arse
#here we defined a method say_arse
#method names almost always start with lower case letters
#
#we can add parameters to this method
def say_arse number_of_arse
  puts 'aaarrrrsee!'*number_of_arse
end
say_arse 4   #4 is the parameter for this method
