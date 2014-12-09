=begin
a. Imagine for a moment, that you want to be able to set a variable, but if it’s not set, you default to a known value. You’d rather do it on a single line.

puts expand = defined?( expand ) ? expand : true

Why is the output nil ?
=end
puts expand = defined?(expand) ? expand : true
=begin
As soon as variable on the LHS, expand is assisgned, it is automatically initializedi as "local-variable", but not assigned, hence the default value nil.
so when defined?( expand ) is evaluated on RHS, it returns true. But the value  has not been assigned, thus nil, which now gets explicitely assigned due to the statement.
=end

