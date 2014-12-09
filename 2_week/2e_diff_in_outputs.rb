=begin
Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
1.
def mtdarry
  10.times do |num|
    puts num
  end
end

mtdarry
================================
2.
def mtdarry
  10.times do |num|
    puts num
  end
end

puts mtdarry
=end
=begin
In the first program the method calls the do..end block 10 times and prints numbers 0 to 9. 10 is returned by the function but it is not printed to screen.
In the second program the method calls the do..end block 10 times and prints the numbers 0 to 9 and since the method is passedto puts the value 10 is printed to the screen.

=end
