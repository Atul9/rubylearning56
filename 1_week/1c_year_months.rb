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
class Age
  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
    @seconds_in_a_month = 60 * 60 * 24 * 30
    @seconds_in_standard_year = 60 * 60 * 24 * 365
  end

  # doctest: age in one year
  # >> age = Age.new(60 * 60 * 24 * 365)
  # >> age.age_in_years
  # => 1
  # doctest: age in 9.79e6 seconds for years
  # >> Age.new(979000000).age_in_years
  # => 31
  def age_in_years
    (seconds.to_f / @seconds_in_standard_year).floor
  end

  def month_remainder
    (seconds % @seconds_in_standard_year) / @seconds_in_a_month
  end

  # doctest: should return only a year and a month
  # >> '%i years and %i months old.' % Age.new(979000000).year_months
  # => "31 years and 0 months old."
  # doctest: for 9.79e4
  # >> '%i years and %i months old.' % Age.new(9790000).year_months
  # => "0 years and 3 months old."
  def year_months
    [age_in_years, month_remainder]
  end

  def to_s
    '%i years and %i months' % year_months
  end
end

if __FILE__ == $0
  seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

  seconds.each do |s|
    puts "For %s is %i years and %i months." %  [s, *Age.new(s).year_months]
    # using the splat operator * in this way flattens the array contents, it
    # causes [1, [1, 2]] to become [1, 1, 2]
  end
end
