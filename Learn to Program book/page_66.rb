def ask question  #ask is the method, question the parameter 
  while true
    puts question
	reply=gets.chomp.downcase
	if (reply=='yes'||reply=='no')
	  if reply=='yes'
	  answer='true'
	  else 
      answer='false'
      end
      break	
	else
	puts 'Please answer "yes" or "no"'
	end
  end
  answer #This is what is returned - True or false
end
ask 'Do you like eating tacos?'  #ignore this return value
ask 'Do you like eating burritos?' #and this one
wets_bed=ask 'Do you wet the bed?'  #save this return value
puts
puts wets_bed
