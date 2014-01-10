#Chapter 8.  8.3  Building and sorting an array
#capture the input for the array
puts 'Type a list of things.'
puts 'Enter one item per line.'
puts 'And when finished just hit Enter on an empty line'
things=[]

while true
  thing=gets.chomp
  if thing==''
    break
  end
  things.push thing
end
puts 'Thank you.  I will now sort your things alphabetically.'
sleep (5)
puts things.sort
  