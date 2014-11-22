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
# Ruby 2.1 onwards its :varible or variable: ?
h = {one: 1, two: 2} # => {:one=>1, :two=>2}
puts h
# {1: 'one'}   This is incorect, as it will not be a symbol, it is an Integer and symbols must start with a string
{1 => 'one', 2 => 'two'} # => {1=>"one", 2=>"two"}
{'1' => 1, '2' => 2} # => {"1"=>1, "2"=>2}
{one: 1, two: 2} # => {:one=>1, :two=>2}
# Using the => is 'safer'
#
class StringHolder
  attr_reader :string
  def initialize(s)
    @string = s
  end

  def ==(other)
    @string == other.string
  end

  def hash
    @string.hash # => 615671864931817344, 615671864931817344, 615671864931817344, 615671864931817344
  end
end
a = StringHolder.new("The same string")
b = StringHolder.new("The same string")
a == b # => true
# This changes if we have defined the == to be custom.
# So if we define the == operator for testing equality then the result is different.
a.hash # => 615671864931817344
b.hash # => 615671864931817344
{
  a => "Something", # => "Something"
  b => 'something else' # => "something else"
} # => {#<StringHolder:0x007fb319c7aaa0 @string="The same string">=>"Something", #<StringHolder:0x007fb319c7a848 @string="The same string">=>"something else"}

# the data in the object is same then the hash value would also be same. Isn't it?
a == b  # => true
a === b  # => true
a.object_id # => 70203604194640
b = object_id # => 70203602276860
3.times do
  'name'.object_id # => 70203604191540, 70203604191420, 70203604191360
end

3.times do
:name.object_id  # => 66088, 66088, 66088
end

5.times do
  1.object_id  # => 3, 3, 3, 3, 3
  true.object_id # => 20, 20, 20, 20, 20
  false.object_id # => 0, 0, 0, 0, 0
  nil.object_id # => 8, 8, 8, 8, 8
  NIL.object_id  # => 8, 8, 8, 8, 8
  # the very same means that it is not something else... it is the very same. :). So as we know false,nil are false.
  # NIL will also evaluate to false  So, false and nil aren't false, but they evaluate as false in Ruby.
  0.object_id  # => 1, 1, 1, 1, 1
end
  if NIL # => nil
    'false' # => 
  end
  # Let's find out what exactly NIL is, though..
  defined?(NIL) # => "constant"
  # So it is a constant that holds a reference to the nil object, similar to a variable. ok
  defined?(nil) # => "nil"
nil # => nil
false  # => false
# both evaluate to false.

# >> {:one=>1, :two=>2}
