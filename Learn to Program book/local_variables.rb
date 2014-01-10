#Local variables
tough_var= 'You can\'t even touch my variable'
def little_pest tough_var
  tough_var=nil
  puts 'HaHa! I ruined your variable!'
end
little_pest tough_var
puts tough_var
# here the second assignment of tough_var has no effect on the "puts"
# at the end because the re-assignment is within the method definition
# it is not local to puts at the end
# There is no access to variables within methods and vice versa