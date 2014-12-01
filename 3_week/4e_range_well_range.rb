=begin
Exercise4. Given the following Ruby code snippet:
a = (1930...1951).to_a
puts a[rand(a.size)]

When you run this program, which of the following values will not be displayed?
1929
1930
1945
1950
1951
1952
Explain why that value will not be displayed.

Also, have a look at the splat operator:
a = [*1930...1951] # splat operator
=end
a = (1930...1951).to_a
puts a[rand(a.size)]
puts "New line"
b = [*1930...1935]
puts b
=begin
The numbers that will not be displayed are 1929,1951 and 1952.

They will not be displayed because (1930...1951) is an exclusive range, meaning
the higher end number that defines the range is not included in the range. The
lower end number is included.

In this case the number 1930 is included and 1951 is not included.

a = (1930...1951).to_a is same as a = [*1930...1951]
splat operator :It splits the elements of the array into single items which are
returned as a group.
  Putting the star before an object invokes the splat operator.
=end

