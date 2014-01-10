buffy_quote_1 = '\'Kiss rocks\'?
				Why would anyone want to kiss...
				Oh, wait. I get it.'
buffy_quote_2 = "'Kiss rocks'?\n" +
			   "Why would anyone want to kiss...\n"+
			   "Oh wait, I get it."
puts buffy_quote_1
puts
puts buffy_quote_2
puts (buffy_quote_1==buffy_quote_2)
#with double quotes you can use \n to indicate a new line
#in double quote strings you must escape the double quotes, just like
#with single quotes in single quote strings

#Something double quote strings do well is interpolation
name='James'
postcode=12345
puts
puts "Name = #{name}, postcode = #{postcode}"
#variable names are used in the string just by putting them inside #{...}
#Also don't have to convert the postcode digits into a string. Ruby understands
#you want a string and does conversion for you.
#In fact you can use any expression not just variables
#Ruby evaluates the expression, converts to string, and injects result into surrounding string
puts "#{2*10**4+1} Leagues Under the Sea"