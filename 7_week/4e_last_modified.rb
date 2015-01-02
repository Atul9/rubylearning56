=begin
Exercise 4: Write a method last_modified(file) that takes a file nameand
displays something like this: file was last modified 125.873605469919 days ago.
Use the Time class.
=end
def last_modified(file = File.new(__FILE__, 'r'))
  difference_in_seconds(file.mtime) / seconds_in_day
end

# Should this really be a constant?
def seconds_in_day
  60 * 60 * 24
end

def difference_in_seconds(historical_time_value)
  Time.now - historical_time_value
end

if __FILE__ == $PROGRAM_NAME
  puts "This program was last modified about %.6f days ago" % last_modified
  puts last_modified(File.new('b1.txt', 'r'))

  require 'pathname'
  puts "The parent folder of this project was last modified %.2f days ago" %
    last_modified(Pathname.new('..'))
end
