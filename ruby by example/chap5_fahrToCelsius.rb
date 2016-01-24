puts "Enter temperature in Fahrenheit: "
fahrenheit = gets.chomp.to_f

celsius = (fahrenheit - 32) / 9 * 5

puts "In Celsius the temperature is: #{celsius.round(2)}"