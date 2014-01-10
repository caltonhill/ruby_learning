# The Method Each
languages= ['Italian', 'Cantonese', 'Japanese', 'Slovak', 'Ruby']
languages.each do |lang|
  puts 'I failed to learn '+lang+'.'
  puts lang.upcase
end  
# which says
# for each object in the languages array
# point the variable lang to the object and 
# then do everything I tell you until I say end
# note that it goes in the order of objects NOT actions
# so it puts the sentence about Italian, and Italian in uppercase before
# moving on to next language
# do up to end indicates a block of code that is being sent to the each method
# methods like each that act like loops are often called iterators