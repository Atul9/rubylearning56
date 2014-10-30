=begin
Exercise 3
Write a Ruby program that displays how old I am, if I am 979000000 seconds old.
Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
Note: To format the output to say 2 decimal places, we can use the Kernel's format method.
For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57
=end

def age_in_years(age_in_seconds)
  days_in_year = 365.25
  hours_in_day = 24
  minutes_in_hour = 60
  seconds_in_minute = 60
  age_in_seconds / (days_in_year * hours_in_day * minutes_in_hour * seconds_in_minute)
end

puts format("Age in years: %.2f" % age_in_years(979000000))
