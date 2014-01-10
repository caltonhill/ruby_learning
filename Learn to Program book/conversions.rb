puts 'Conversions'
puts 'Converting strings to integers and vice versa'
var1=2
var2='5'
puts 'var1 points to 2 which is an interger. var2 points to \'5\' which is a string.'
puts 'To get the the string version of an object we simply write .to_s after it.'
puts var1.to_s + var2
puts 'This has made var1 into a string and added it to the string var2. As both are strings 2 plus 5 is 25 not 10.'
puts 'Similarly .to_i gives the integer version of an object and .to_f gives the float version.'
puts 'Integers are whole numbers, floats have decimal point.'
puts var1+var2.to_i
puts 'This time 5 was converted to an integer and so 2 plus 5 is 7.'
puts 'Using conversions does not permanently change the variable.'
puts 'If called again without explicit conversion it will be in original form.'
puts ''
puts 'CONVERSIONS'
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favourite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i