a = StringHolder.new("The same string")
b = StringHolder.new("The same string")
a == b # => true
# This changes if we have defined the == to be custom.
# So if we define the == operator for testing equality then the result is different.
a.hash # => 4505763373573137773
b.hash # => 4505763373573137773
