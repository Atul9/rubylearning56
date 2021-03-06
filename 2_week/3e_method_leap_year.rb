=begin
Exercise3.
Write a method leap_year?.
It should accept a year value from the user, check whether it's a leap year, and then return true or false.
With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the
number of minutes in a non-leap year (1900 and 2005).
Note: Every year whose number is divisible by four without a remainder is a leap year,
excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder.
If not so divisible they are common years. 1900, therefore, is not a leap year.
=end
def leap_year?(year)
  year % 400 ==  0 || year % 4 == 0 && year % 100 != 0
end
puts 'Enter a year'
year = gets.to_i
if leap_year?(year)
  minutes= 60 * 24 * 366
else
  minutes = 60 * 24 * 365
end
puts "This is a #{leap_year?(year) ? 'leap' : 'normal'} year with #{minutes} minutes"
