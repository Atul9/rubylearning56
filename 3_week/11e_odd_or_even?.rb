=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.
=end
# doctest: odd_or_even returns "even" for even numbers
# >> odd_or_even 12
# => true
# doctest: odd_or_even returns 'odd' for odd numbers
# >> odd_or_even 3
# => false
def odd_or_even(numbers)
  # currently, this method does not do what the method name suggests
  # It returns an array
  numbers.each do|n|
    n.even? ? puts("#{n} is even") : puts("#{n} is odd")
  end
end

if __FILE__ == $PROGRAM_NAME
  collection = [12, 23, 456, 123, 4579]
  odd_or_even(collection)
end
# even? is a method of Integer. It returns true if int is even
