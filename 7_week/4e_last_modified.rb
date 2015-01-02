=begin
Exercise 4: Write a method last_modified(file) that takes a file nameand
displays something like this: file was last modified 125.873605469919 days ago.
Use the Time class.
=end
def last_modified(file)
  seconds_diff = Time.now - File.new(file).mtime
  days_diff = seconds_diff/ (60 * 60 * 24)
  "File was last modified #{days_diff} days ago."
end
puts last_modified('b1.txt')
