start_num=8
num_now=start_num
while num_now > 2
  puts num_now.to_s + ' bottles of beer on the wall.' 
  puts num_now.to_s + ' bottles of beer.'
  num_now=num_now-1
  puts 'Take one down, pass it around. Only ' 
  puts num_now.to_s + ' bottles of beer on the wall!'
end