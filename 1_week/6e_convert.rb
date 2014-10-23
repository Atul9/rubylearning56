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
