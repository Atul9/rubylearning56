=begin
Exercise9. Given a string, write a program to reverse the word order (rather
than character order). The String and Array classes provide methods which will
be very helpful for solving this exercise.
=end
# doctest: Reverse the words in a sentence
# >> reverse_word_order "Hello world"
# => "world Hello"
def reverse_word_order(str)
  str.split.reverse().join(' ')
end
puts "Enter a string : "
str = gets.chomp
puts reverse_word_order(str)
