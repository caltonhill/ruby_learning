puts 'Hello what\'s your name?'
name=gets.chomp
puts 'Hello, '+name+'.'
if name=='Chris'
  puts 'What a lovely name'
end
puts''
puts 'Let me tell your fortune. What is your name?'
name=gets.chomp
if name=='James'
  puts 'The future is heavenly'
else puts 'You are humped.'
end
puts''
puts 'Hello, and welcome to Ruby for the middle-aged.'
puts 'What\'s your name?'
name=gets.chomp
if name==name.capitalize
  puts 'Take a seat, '+name+'.'
else 
  puts name+'? You mean '+name.capitalize+',don\'t you?'
  puts 'Can\'t you spell your own name, retardo?'
  reply=gets.chomp
  if reply.downcase=='yes'
    puts 'OK then, dimwit.'
  else
    puts 'GET OUT!!'
  end
end
