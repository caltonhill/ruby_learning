bye_count=0
puts 'What do you want?'
while true
  speech=gets.chomp
  if speech=='BYE'
    bye_count=bye_count+1
  else 
    bye_count=0
  end
  if bye_count >= 3
    puts 'BYE NOW'
	break
  end
  if speech !=speech.upcase
    response='Speak up sonny.'
    puts response.upcase 
  else speech==speech.upcase
    year=1930+rand(21)
    puts 'NO, NOT SINCE '+year.to_s+'!'
  end
end