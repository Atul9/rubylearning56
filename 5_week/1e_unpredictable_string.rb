=begin
Exercise1. Write a class UnpredictableString which is a sub-class of String.
This sub-class should have a method called scramble() which randomly rearranges
any string as follows:

>ruby unpredictablestring.rb

daano.r n sdt a htIsw taikmgy r
>Exit code: 0
# the original string was: "It was a dark and stormy night."
# Don't forget that you will be using < and so must, I repeat must, remember to
# replace the < with &lt; if you are posting directly to the forums. If you are
# embedding your code, this does not apply to you.
=end

# This is the way to implement this on Rubinius, possibly other flavors of Ruby
# The problem(?) with MRI Ruby is that the String class does not call .to_s
# when doing string interpolation or when using puts or prints, as it is a
# String and it figures that you don't need it.
# But in Rubinius this works perfectly fine.
#
# The solution, then, is to NOT have UnpredictableString subclass the String
# class.
#
# But this raises other questions.  If I modify the method called is_a? to
# return true if asked if this is a String, does it also then not call .to_s?
#
# How can we find out?
#

class UnpredictableString < String
  def initialize(text)
    super text.to_s # should calll to the .to_s method explictly. whilie
    # initializing the object. But it doesn't need to if it is a String, as it
    # already is a string.  Plus, we want it to be dynamic, right?  Unpredictable .yes.
    @text = text.to_s # Of course if we give it a number, or an array or something, this will solve that "problem".ok.
    # Should you post the version that works with the < String subclassing in RBX?  With a comment that states that it requres RBX?
    # you mean in the forum? ru bYyeslearning. Yes. Ok. I will check the working rubinius and post to forum.
    # Travis's solution was working. But our poblem is we ant that the .to_s
    # method should return true if its a string and geth the unpredictable
    # string . Isn;t it?
    # Close, we don't care that the to_s returns true.  We would only care that we can use it to return a value that is not predictable.
  end
  def scramble
    @text.split('').shuffle!.join
  end
  # In a normal situation, when we call puts or .to_s on our object the .to_s method would be called.
  # String is actually getting in our way in MRI.
  def to_s
    scramble # does not return true, but does call scramble..Ok. so the to_s
    # method should get called and it should return an unpredictable string.
    # That is the effect. So if we pass an array number it gets called..
  end
end
t = UnpredictableString.new("It was a dark and stromy night")
puts t.is_a? String  # At the moment it should return false...  as it doesn't subclass String
# Now it returns true because it is a subclass of String.
# OK, so we need to go back to the Rubinius install, and check some things out
# (maybe) but first we need to modify how it gets reported that this is or is
# not a String subclass
# .to_s returns the receiver.  SO In the def is_a we are by defaults returning
# true regardless the string.Then we get nil from to_s. Is it? or I am wrong?
#
# is_a? will always return true, the question is whether the to_s gets called.
# I don't believe that .to_s is being called   But I tried to define is_a? to
# answer true if it is being used to find out if a method is a string...
# because I know in MRI when an object is a string, the .to_s method is not
# automatically called.
puts t.to_s
10.times do
  puts t
end
puts 1.to_s
