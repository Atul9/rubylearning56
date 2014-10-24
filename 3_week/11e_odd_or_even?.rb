=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.
=end
collection = [12, 23, 456, 123, 4579]
def odd_or_even(numbers)
  numbers.each do|n|
  n.even? ? puts("#{n} is even") : puts("#{n} is odd")
  end
end
odd_or_even(collection)
# even is a method of Integer. It returns true if int is even
