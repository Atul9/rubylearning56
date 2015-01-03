=begin
Exercise 4: Write a method last_modified(file) that takes a file nameand
displays something like this: file was last modified 125.873605469919 **days** ago.
Use the Time class.
=end
def last_modified(file_name = __FILE__)
   modified_age_of(file_name) / seconds_in_day
end

private

def modified_age_of(filename)
  Time.now - File.new(filename).mtime
end

def seconds_in_day
  60 * 60 * 24
end

puts last_modified('b1.txt') # This ensures the return is reasonable... just a set of days.
puts  "File was last modified #{ last_modified 'b1.txt' } days ago." # This gives good context/reporting
puts last_modified # This one by default checks the current file. 
