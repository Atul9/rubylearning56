=begin
Using what we have learned so far: 
I wonder if anyone could have a crack at working out the age in years and months form.
For example “I’m 32 years and 6 months old.” Use the following values for age_in_seconds:
979000000
2158493738
246144023
1270166272
1025600095
=end
def seconds_in_a_month
   60 * 60 * 24 * 30
end
def seconds_in_standard_year
   60 * 60 * 24 * 365
end
def age_in_years(seconds)
   seconds / seconds_in_standard_year
end
def month_remainder(seconds)
  (seconds % seconds_in_standard_year) / seconds_in_a_month
end
def age_in_years_and_months(seconds)
 puts "Age in seconds : #{seconds}.  #{age_in_years(seconds)} years and #{month_remainder(seconds)} months old. "
end
seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]
seconds.each do |convert|
puts age_in_years_and_months(convert)
end
