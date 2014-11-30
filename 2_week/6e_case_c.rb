=begin

c. In the following Ruby code, x gets the value nil and pqr remains an undefined local variable. Why?
if false
 x = pqr
 end
 puts x
 puts pqr
=end

if false
  x = pqr
end
puts x
puts pqr
=begin
Although the if block will not be executed but still the variable x is assigned
a nil value because it appears before = sign. The variable pqr is undefined and
hence the program will return a NameError.
=end
