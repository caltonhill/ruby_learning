# move to relevant directory
Dir.chdir 'C:/Temp'
# find all the pictures to be moved
pic_names=Dir['E:/Prague/*.{JPG,jpg}']
# to search in the current directory and all subdirectories - **/*.extension
# to search in the parent directory - ../*.extension
puts 'What should this batch be called?'
batch_name=gets.chomp
puts
print "Downloading #{pic_names.length} files: "
#This will be our counter
pic_number=1
pic_names.each do |name|
  print '.' # This is our progress bar
  new_name= if pic_number<10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
# This renames the picture, but since 'name' had a long path
# and 'new name' doesn't it also moves the file to the 
# current working directory as set at the start
# Since it's a move this downloads and deletes the original
# The little dots show something's happening
File.rename name, new_name
#Finally we increment the number
pic_number=pic_number+1
end
puts
puts 'Done!'