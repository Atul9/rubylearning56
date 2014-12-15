# Exercise1. Write a class UnpredictableString which is a sub-class of String.
# This sub-class should have a method called scramble() which randomly
# rearranges any string as follows:
#
# >ruby unpredictablestring.rb
#
# daano.r n sdt a htIsw taikmgy r
# > Exit code: 0
# the original string was: "It was a dark and stormy night."
# Don't forget that you will be using < and so must, I repeat must, remember to
# replace the < with &lt; if you are posting directly to the forums. If you are
# embedding your code, this does not apply to you.
# This program works as expected in Rubinius
class UnpredictableString < String
  def initialize(something)
    @unpredictable = String.new(something)
  end
  def scramble
    @unpredictable.split('').shuffle!.join
  end

  def to_s
    #super
    scramble
  end
end
t = UnpredictableString.new('It was a dark and stromy night')
10.times do
  puts t.scramble
end
# When we just call the object of UnpredictableString class Without inhering from String class we get the unscrambled string
# But after inheritance we dont get the result.
# Right, because a String object does not allow the .to_s method to be called
# as it is for almost all other objects when you call puts.
# This does work fine, and it is to the specification of the exercise.  But this is only the first part of the exercise.
# Go ahead and submit this solution, and we will talk about (and you can bring it up) how it works better if we don't subclass String.
# Ok. I will comiit this since there is no xclip on nitrous.
