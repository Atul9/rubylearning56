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

Note: This exercise is about inheritance, method overriding and method overloading not about UI.
=end
class Shape
  def initialize(shape, sound)
    @shape = shape
    @sound = sound
  end
  def rotate
    "#{@shape} rotates by 360 degrees"
  end
  
  def play
    "Playing #{@sound}"
  end
  
  def click
    [rotate, play].join("\n")
  end

end
class Square < Shape

end
class Circle < Shape

end
class Triangle < Shape

end

[
  Square.new("square", "guitar"),
  Circle.new("circle", "drums")
].each do |shape|
  puts shape.click
end
