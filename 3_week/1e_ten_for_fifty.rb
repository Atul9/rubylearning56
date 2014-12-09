=begin
Exercise 1. Why is the output of this program:
==========================
def method
  a = 50
  puts a
end

a = 10
method
puts a
==========================
This displays like so:

50
10
=end
def method
  a = 50
  puts a
end
a = 10
method puts a
=begin
When the method is called the value fo a which is local to the method gets printed
When a is passed to the puts function outside the scope of the method then the value of a which is gobal gets printed i.e 10
=end
