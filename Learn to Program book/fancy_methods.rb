var1='stop'
var2='deliver repaid desserts'
var3='...TCELES B HSUP  A magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''
puts 'What is your full name?'
fullname=gets.chomp
puts 'Did you know there are '+fullname.length.to_s+' characters in that name?'
puts ''
puts 'What is your first name?'
firstname=gets.chomp
puts 'And what is your surname?'
surname=gets.chomp
puts 'Did you know there are '+(firstname.length + surname.length).to_s+' characters in that name?'
puts ''
letters="aAbBcCdD"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts 'z'.capitalize
puts letters
puts ''
line_width=50
puts ('Old Mother Hubbard'.center(line_width))
puts ('Sat in her cupboard'.center(line_width))
puts ('Eating her curds and whey'.center(line_width))
puts ''
line_width=40
str='-->text<--'
puts (str.ljust(line_width))
puts (str.center(line_width))
puts (str.rjust(line_width))
puts (str.ljust(line_width/2)+str.rjust(line_width/2))