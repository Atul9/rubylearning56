=begin
From Michael Kohl:

Over the past few years I've noticed that lots of programmers seem to have
pretty big deficits when it comes to formal logic. Personally I think that's a
shame, so I decided to post a little challenge:

Ruby has a ternary operator (`?:`), which is basically a short version of `if...else`:
===============================================
puts 5 > 3 ? "yeah" : "boo" #=> nil
yeah
puts 5 < 3 ? "yeah" : "boo" #=> nil
boo
=========================================

Now imagine that operator wouldn't exist, how could you easily replace it by
using logic operators and exploiting short-circuiting and precedence?

What is the question?
Remember that short circuiting is using something like variable ||= value
So we can do something like variable true unless variable.
  Or we can use variable = variable || true
That is short circuiting, meaning that the statement is executed up to a point, unless the rest of it needs to be executed.
    our variable is called variable in my example.
    on line 23  we are assigning variable either true or value of variable isn't it?
    Yes, but more precisely, if the variable isn't false or nil, then we are
  assigning true... otherwise it just equals what variable already equals
  Ok. and on line 21 its the same.
    Yes, technically it is not identical, but it is effecively the same.
    ok.In this problem we have to think if the ternary operator didn't exists then how could we solve it. isn't it?
  Yes.
    I will keep all this as notes and start with the problem.
=end
=begin
 doctest: logical returns 'yeah' if the first is greater than the last
 >> logical(5, 3)
 => 'yeah'
 doctest: logical returns 'boo' if the last is greater than the first
 >> logical(3, 5)
 => 'boo'
=end
def logical(first, last)
  first > last and "yeah" or "boo"  # We can substitute and and or with && and ||
end
# && works like left hand side is true and right  hand side is true then do
# that, and stop there.  otherwise, continue and do the right hand side of or.
# Let's experiment.
true and true or false  # => true
false and false and true or 1 # => 1

