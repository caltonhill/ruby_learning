def factorial num
  if num<0
    return 'I\'m afraid I can\'t do that, Dave'
  end
  if num<=1
    1
  else
    num*factorial(num-1)
  end
end
puts factorial 3
puts factorial 30
puts factorial 16
puts 'Factorials!'
puts factorial 3.333  