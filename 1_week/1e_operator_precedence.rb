=begin
Exercise1. Before executing the code given below, guess the results. Next, execute the code. Did you get it right? If you did not get it right, can you think of why?

Discuss your first guess and what you got when running the code.
  Goal: Understanding operator precedence and association.
=end
y = false
z = true
x = y or z # assignment(=) operator has higher precedence than logical operator (or)
puts x     # false
(x = y) or z # () parenthesis have higher precedence than logical operator (or)
puts x      # false
x = (y or z) # True or false will always evaluate to True
puts x      # true
