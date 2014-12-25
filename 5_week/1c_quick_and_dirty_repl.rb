=begin

From Michael Kohl: Many programming languages come with a [Read–eval–print
loop](http://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) or
REPL for short. 

Ruby has IRB for this purpose, but it's also trivial to build a simple REPL yourself. Give it a try!
=end

input = nil
until input == 'exit'
  print ">> "
  input = STDIN.gets # read
  evaluation = eval(input) # eval
  puts "=> #{evaluation.inspect}" # print
end # loop

# read
# eval
# print
# loop
