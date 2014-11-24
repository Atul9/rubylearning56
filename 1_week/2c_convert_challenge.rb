=begin
This is a modified version of a challenge delivered to my batch by JosC) Carlos
Monteiro that taught me and several of my classmates a lot about Ruby just by
accepting and working through it:

Write a program that asks for user input, then changes that input from one
temperature unit to another based upon the user's wishes.

Write code to handle user input. That code must include a succinct explanation
of how the user should type the values so the program can understand if it's
meant to convert from Celsius to Fahrenheit or vice-versa. It will then proceed
to "parse" the input and obtain two "values": "conversion to make" and "value
to use", where the first means to convert from Celsius to Fahrenheit or
vice-versa and the second is the temperature value to be converted.

Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion
process, assuming that the temperature value is always passed as a Float. This
is to "prevent" you from writing code to validate the argument. But that
doesn't mean you shouldn't validate the value. Meaning that you shouldn't worry
if the argument is or is not a Float - assume it is - and instead worry if the
value is within an "acceptable range". Consider absolute zero.

If you want to take this challenge even further, then make the conversion
program also able to handle other units of temperature (such as Kelvin,
Rankine, etc).

Note: the intention here is not to have you code lines and lines of statements
but to think in out-of-the-box, abstract ways:

Tip 1: Kelvin is just an "adjustment" of another calculation. ;-)
Tip 2: A conversion of a value can be seen as unit_from, unit_to,
value_to_convert. An abstract example would be to convert 100 from Euros to US
Dollars.

Some Wikipedia References:

- Celsius
- Fahrenheit
- Kelvin
- Comparison of temperature scales

This isn't a competition; just fun for everyone, whether you accept the
challenge or not. Have a blast with it! I sure did... :-P

 A note from Jose:

 There are several goals with this challenge:

 - Having yet more fun with Ruby around week 2.
 - Starting to walk the path of DRY - Don't Repeat Yourself.
 - Keeping close attention not to break any progress made, unless state otherwise.
 - Learning to "uphold" the contract between the person asking for features and
the delivery of those features.

You people can also challenge one another, this is not one-direction. You can
also look for gems that handle temperature conversions or other conversions
such as distance. How about a currency exchange rate conversion? Or building up
upon code posted by others, for example improving someone's code with input
validation or stretching another's code to handle more units, or fixing
another's code bugs...
=end
# doctest: Checking for fahrenheit to other unit conversion
# >> fahrenheit(212, 'Celcius')
# => 100
def fahrenheit(degree,convert_to)
  if convert_to == 'celcius'
    (degree - 32) * 5 / 9
  elsif convert_to == 'kelvin'
    (degree + 459.67) * 5 / 9
  elsif convert_to == 'rankine'
    degree + 459.67
  elsif convert_to == 'fahrenheit'
    degree
  end
end

# doctest: Celcius to other units
# >> celcius(100, 'Fahrenheit')
# => 212
# doctest: Celcius to kelvin
# >> celcius(100, 'Kelvin')
# => 373.15
def celcius(degree, convert_to)
  if convert_to == 'fahrenheit'
    (degree * 9 / 5.0) + 32
  elsif convert_to == 'kelvin'
    degree + 273.15
  elsif convert_to == 'rankine'
    (degree + 273.15) * 9 / 5
  elsif convert_to == 'celcius'
    degree
  end
end

# doctest: Kelvin to other units
# >> kelvin(310.15, 'Celcius')
# => 37
def kelvin(degree, convert_to)
  if convert_to == 'fahrenheit'
    (degree - 459.67) * 9 / 5
  elsif convert_to == 'celcius'
    degree - 273.15
  elsif convert_to == 'rankine'
    degree * 9/5
  elsif convert_to == 'kelvin'
  end
end

def rankine(degree, convert_to)
  if convert_to == 'fahrenheit'
    degree - 459.67
  elsif convert_to == 'celcius'
    (degree - 491.67) * 5 / 9
  elsif convert_to == 'kelvin'
    degree * 5 / 9
  elsif convert_to == 'rankine'
    degree
  end
end


# doctest: Getting a string from the user will cause an error
# >> my_lambda = ->(value) { begin ; convert_to_celcius(value); rescue => e ; e.class ; end }
# >> my_lambda['some string']
# => NoMethodError

if __FILE__ == $PROGRAM_NAME
  puts "Menu \n\nCelcius\nFahrenheit\nKelvin\nRankine\n\nEnter the unit:"
  measurement = gets.chomp.downcase
  puts "Enter the degree"
  temperature =  gets.to_f
  puts "Enter the unit to convert into :"
  convert_to = gets.chomp.downcase
  if measurement == 'celcius'
    puts("After conversion : ", celcius(temperature, convert_to))
  elsif measurement == 'fahrenheit'
    puts("After conversion : ", fahrenheit(temperature, convert_to))
  elsif measurement == 'kelvin'
    puts("After conversion : ", kelvin(temperature, convert_to))
  elsif measurement == 'rankine'
    puts("After conversion : ", rankine(temperature, convert_to))
  end
end
