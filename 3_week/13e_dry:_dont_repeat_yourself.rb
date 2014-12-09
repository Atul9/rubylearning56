=begin

Exercise13 Ruby is a DRY language. Ruby helps you keep your code short and
concise. DRY stands for: Don’t Repeat Yourself Syntactically, it’s a very
efficient language: you can express the same thing with less lines of code. As
we know, computers are fast enough that more lines of code do not slow them
down. But what about you? When it comes to debugging and maintaining, the more
code you have to deal with, the harder it is to see what it does and find the
problems that need fixing. Here's some code:
# The long way
# record = Hash.new
# record[:name] = “Satish”
# record[:email] = “mail@satishtalim.com”
# record[:phone] = “919371006659”
=end
record = {:name => 'Satish', :email => 'mail@satishtalim.com', :phone => '919371006659'}
puts record
=begin
OR
a = %w[name email phone]
b = %w[satish mail@satish.com 8765309]
 
answer = a.zip(b)
p Hash[answer]

h = Hash[a.zip(b)]
for ruby 2.0
h = a.zip(b).to_h
=end
