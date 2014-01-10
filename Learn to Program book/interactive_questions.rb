puts 'Hello, and thank you for joining me'
puts 'May I ask your first name?'
firstname=gets.chomp
puts 'I see. Your first name is '+firstname+'.'
puts 'And, what is your surname?'
surname=gets.chomp
puts 'Right. So your full name is '+firstname+' '+surname+'.'
puts 'Now a question about numbers.'
puts 'What is your favourite number?'
var1=gets.chomp
var2=2.5
puts 'My favourite number is'
puts var1.to_i*var2
puts 'Which is bigger and better than your crappy '
puts var1.to_i