#YAML needs to be imported into the program
require 'yaml' #That's it done
test_array= ['Mean Streets', 'Raging Bull', 'After Hours', 'Boxcar Bertha']
test_string=test_array.to_yaml 
	#like .to_s - and it is a string - but it's a YAML description of test_array
filename='2_word_scorsese_films.txt'
File.open filename, 'w' do |f|
 f.write test_string
end
read_string=File.read filename
#And the other half of the magic..
read_array=YAML::load read_string 
puts (read_string==test_string)
puts (read_array==test_array)
