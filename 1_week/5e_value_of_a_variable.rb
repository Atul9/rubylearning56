=begin
Exercise 5. The following program prints the value of the variable. Why?
my_string = 'Hello Ruby World'
def my_string
  'Hello World'
end
puts my_string
=end
my_string = 'Hello Ruby World'

def my_string
  'Hello World'
end

puts my_string
puts my_string()

# To give a call to the my_string method explicitly we need to call it in the following way:
# puts my_string()
# That is only one way to do the method call though what are the other ways?
# It doesn't win, it just is found.  So there is a look up table that holds the
# symbols that represent the variable and the method name.  That symbol is
# :my_string and so it holds it in a place so that it knows what it is.
puts defined?(my_string)
# so in the lookup table, it holds that symbol in the local-variable spot, but
# also in the method spot.  It stops looking through when it finds it (like
# that 50 dollar bill you lost, if you find it, you won't continue to look for
# it, right?  Even though the possibility that there is another 50 dollar bill
# is in another location.  You stop looking for it.  Ruby does the same thing.
# It looks to see if it is defined as a local variable, if it is it stops
# looking, if it isn't it checks if it is a method.  If so, then it stops looking.

