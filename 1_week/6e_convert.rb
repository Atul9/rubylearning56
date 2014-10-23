=begin
Exercise 6
Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit.
This method should return the temperature in degrees Celsius.
To format the output to say 2 decimal places, we can use the Kernel's format method.
For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows:
    puts (x*100).round/100.0
=end
#doctest: convert -40 results in -40
# >> convert(-40)
# => -40
# doctest: 32 is freezing
# >> convert(32)
# => 0
# doctest: 212 is boiling point
# >> convert(212)
# => 100
# doctest: 98 is close to body temperature
# >> convert(98).round(8)
# => 36.66666667
# doctest: 98.6 is body temperature average
# >> convert(98.6)
# => 37
 def convert(_Fahrenheit)
   (_Fahrenheit.to_f - 32) * 5 / 9
 end
# We are supposed to write some running code that gives us a report and rounds
# the result to 2 places.
 if __FILE__ == $PROGRAM_NAME
   puts 'Enter a value'
   temp_farenheit = gets.chomp
   temp_celcius = convert(temp_farenheit)
   puts format('Temperature in Celcius : %.2f', temp_celcius)
 end
