=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12,
23, 456, 123, 4579] prints each number, and tells you whether it is odd or
even.
=end
# doctest: odd_or_even returns "even" for even numbers
# >> odd_or_even 12
# => 'even'
# doctest: odd_or_even returns 'odd' for odd numbers
# >> odd_or_even 3
# => 'odd'
def odd_or_even(number)
  # currently, this method does not do what the method name suggests
  # It returns an array
    number.even? ? 'even' : 'odd'
end

if __FILE__ == $PROGRAM_NAME
  collection = [12, 23, 456, 123, 4579]
  collection.each do |number|
  puts "#{number} is #{odd_or_even(number)}."
  end
end
# even? is a method of Integer. It returns true if int is even
