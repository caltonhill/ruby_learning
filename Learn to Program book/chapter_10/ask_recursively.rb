def ask_recursively question
  puts question
  reply=gets.chomp.downcase
  if reply=='yes'
    true
  elsif reply=='no'
    false
  else 
    puts 'Please answer "yes" or "no"'
	ask_recursively question #This is the magic line	
  end
 end
 ask_recursively 'How much wood would a woodchuck chuck?'