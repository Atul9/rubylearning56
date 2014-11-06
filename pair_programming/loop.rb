#Yesterday I tried a program for converting a decimal number to binary
#In ruby its much more simple
puts 7.to_s(2)
# How do we get that '111' back to a decimal?
# I think
puts '111'.to_i(2)

for i in (1..8)
  puts "#{i}: Hello"
end
puts "The variable 'i' survives and is: #{i}"
#why did the value of i return 8 when it shouldreturn 10 below part
(1..10).each do |i|
  puts "#{i}: Hello"
end

puts "The local variable 'i' is not touched, and remains #{i}."


# It is still 8, even though the block variable i is 10 in the each statement
