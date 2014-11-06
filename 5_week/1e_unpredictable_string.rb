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
class UnpredictableString < String
  def initialize(text)
    @text = text
  end
  def scramble
    @text.split('').shuffle!.join
  end
  def display()
    @text
  end
end
t = UnpredictableString.new("It was a dark and stromy night")
puts t.display
10.times do
puts t.scramble
end
