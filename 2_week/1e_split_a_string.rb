=begin
      Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

         c:>> ruby 2wk_1e_linify.txt
=end
# doctest: linify with 2 lines
# >> linify("Hello\nWorld")
# => "Line 1: Hello\nLine 2: World"
# doctest: Linify for given question
# >> linify("Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n")
# => "Line 1: Welcome to the forum.\nLine 2: Here you can learn Ruby.\nLine 3: Along with other members."
# >> linify("I really\nwant to\nsplit this\n string instead.\n")
 def linify(text)
   text.split(/\n/).map.with_index(1) do |line, index|
   "Line #{index}: #{line}"
   end.join("\n")
 end
 if __FILE__ == $PROGRAM_NAME
 puts linify("I really\nwant to\nsplit this\nstring instead.\n")
 end
