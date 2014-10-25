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
def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  elsif
    num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num
  end
end
if __FILE__ == $PROGRAM_NAME
  1.upto(100) do |num|
    puts fizzbuzz num
  end
end
