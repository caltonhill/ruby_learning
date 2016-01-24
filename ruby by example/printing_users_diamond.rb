puts "Enter an odd number for the diamond width: "
width = gets.chomp.to_i
  while width % 2 == 0 do
    puts "Number must be an odd number: "
      width = gets.chomp.to_i
  end
  space = " "
  space_count = (width / 2) + 1
  width.times do |row|
  
    if row < (width / 2) + 1
       space_count -= 1
       star_count = row * 2 + 1
       print space * space_count
    else
       space_count += 1
       star_count = (width - 1 - row) * 2 + 1
       print space * space_count
    end
    puts '*' * star_count
  end
 