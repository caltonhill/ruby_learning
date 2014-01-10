#array methods
foods = ['banana', 'croissant', 'tunnock\'s teacake']
puts foods
puts
puts foods.to_s  #prints out the array as strings
puts
puts foods.join(', ')
puts
puts foods.join(' :)')+ ' 8)'
200.times do
  puts []   #this does nothing because it's an empty array
end
3.times do
  puts foods
end
puts
#now pop and push and last
favourites=[]
favourites.push 'raindrops on roses'
favourites.push 'whiskey on kittens'
# push adds to the end of an array. so just added two items to end of empty array.
puts favourites[0]
puts favourites.last
puts favourites.length  #length tells you how many things in the array. here 2
puts favourites.pop #pop removes the last object from an array and tells you what it was
puts favourites
puts favourites.length #having popped the array the length is now 1