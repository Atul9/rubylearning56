Hash.new # => {}
# Gem called "seeing is believing" and it uses something like xmpfilter.
my_hash = Hash.new(0)  # => {}
my_hash['something new']  # => 0
# Press F9 to filter this through and get the comments of the returns for the lines.
# F8 will give the #=> marks, and F9 will fill them in.
#
def something_repetitive(argument)
  argument # => "Hello", "Hello", "Hello", "Hello", "Hello"
end

5.times do
  something_repetitive "Hello"
end
numbers = { :two => 2, :five => 5} # => {:two=>2, :five=>5}
numbers.keys # => [:two, :five]
numbers.values # => [2, 5]
numbers.to_a # => [[:two, 2], [:five, 5]]
# Combination of F8 filters the code and gives the output or return in the form of  comments on the same line.
