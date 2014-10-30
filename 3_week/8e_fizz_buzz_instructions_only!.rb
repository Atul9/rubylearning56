=begin
Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for
multiples of three print "Fizz" instead of the number and for multiples of five
print "Buzz". For numbers which are multiples of both three and five print
"FizzBuzz".
=end
# doctest: fizzbuzz(3) should be Fizz
# >> fizzbuzz(3)
# => 'Fizz'
# doctest: fizzbuzz(5) should be Buzz
# >> fizzbuzz(5)
# => 'Buzz'
# doctest: fizzbuzz(1) should be 1
# >> fizzbuzz(1)
# => 1
# doctest: fizzbuzz(15) should be FizzBuzz
# >> fizzbuzz(15)
# => 'FizzBuzz'
#
def fizzbuzz(number)
  result = ''
  result << 'Fizz' if number % 3 == 0
  result << 'Buzz' if number % 5 == 0
  result.empty? ? number : result
end
if __FILE__ == $PROGRAM_NAME
  1.upto(100) do |num|
    puts fizzbuzz num
  end
end
