def fave_food name
  if name=='James'
    return 'baps'
  end
  if name=='Eva'
    return 'crisps'
  end
  'hard to say, maybe cheesy wotsits?'
  #that was the last expression in the method
end
def fave_drink name
  if name=='James'  
    'whisky and coke'
  elsif name=='Eva'
    'caj'
  else 
    'Sunny D'
  end
end
puts fave_food ('James')
puts fave_food ('Eva')
puts fave_food ('Bowie')
puts
puts fave_drink ('James')
puts fave_drink ('Eva')  
puts fave_drink ('Prince')
#2 diff ways of defining the return. 
#fave_food uses explicit returns
#fave_drink doesn't
