=begin
Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software
shop, two programmers were given the same spec and told to "build it". The
Really Annoying Project Manager forced the two coders to compete, by promising
that whoever delivers first gets one of those cool Aeron chairs all the Silicon
Valley guys have.

The spec. There will be shapes on a GUI, a square, a circle and a triangle.
When the user clicks on a shape, the shape will rotate clockwise 360 degrees
(ie. all the way around) and play an AIF sound file specific to that particular
shape. Go for it guys and show me your code.

Note: This exercise is about inheritance, method overriding and method
overloading not about UI.
=end

=begin
doctest: Click method
>> s = Circle.new
>> s.click
=> "The circle rotates 360 degrees\nPlaying circle.aif"
This returns nil, sure... but in doing so, you don't really test it.  But we
can test rotate and play, and normally may not do so, if we are testing the
methods using it.  In this case, we can't really test the method using them,
so we should or at least could test those methods
doctest: Testing private methods play
>> circle = Circle.new
>> circle.send(:play)
=> 'Playing circle.aif'
doctest: Testing private methods click
>> circle.send(:rotate)
=> "The circle rotates 360 degrees"
=end



class Shape
  def initialize(name = nil, sound = nil, extension = 'aif')
    @name = name || self.class.to_s.downcase
    @sound = sound || @name
    @extension = extension
  end

  def click
    [rotate, play].join("\n")
  end

  private

  def play
    "Playing #{@sound}.#{@extension}"
  end

  def rotate
    "The #{@name} rotates 360 degrees"
  end
end
class Square < Shape
end
class Circle < Shape
end
class Triangle < Shape
end

[
  Square.new,
  Circle.new,
  Triangle.new,
].each do |shape|
  puts shape.click
end
