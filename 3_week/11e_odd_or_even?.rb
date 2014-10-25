=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12,
23, 456, 123, 4579] prints each number, and tells you whether it is odd or
even.
=end
class Integer
  # doctest: odd_or_even returns "even" for even numbers
  # >> 12.odd_or_even
  # => 'even'
  # doctest: odd_or_even returns 'odd' for odd numbers
  # >> 3.odd_or_even
  # => 'odd'
  def odd_or_even
    # currently, this method does not do what the method name suggests
    # It returns an array
    even? ? 'even' : 'odd'
  end
end

if __FILE__ == $PROGRAM_NAME
  collection = [12, 23, 456, 123, 4579, ]
  collection.each do |number|
    puts "#{number} is #{number.odd_or_even}."
  end

  15.times do
    number = rand(1.0e6)
    puts "#{number} is #{number.odd_or_even}."
  end
end
# even? is a method of Integer. It returns true if int is even
