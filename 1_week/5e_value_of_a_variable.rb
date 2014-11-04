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

