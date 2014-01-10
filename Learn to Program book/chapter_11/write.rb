filename='quotation.txt'
test_string='I have a dream today.'+
			'I have a beamer today.'
# The w here signifies writing to the file
File.open filename, 'w' do |f|
  f.write test_string
end

read_string=File.read filename
puts (read_string==test_string)