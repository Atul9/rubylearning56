=begin
The Really Annoying Project Manager (Yes Boss) has made a spec change!

"There will be an amoeba shape on the screen, with the others. When the user
clicks on the amoeba, it will rotate like the others, and play a .hif sound
file. The other figures like rectangle rotate around the center. I want the
amoeba shape to rotate around a point on one end, like a clock hand !"
=end
class Shape
  def initialize(shape = nil, sound = nil, direction = 'by 360 defrees', extension = 'aif')
    @shape = self.class.name
    @sound = self.class.name
    @direction = direction
    @extension = extension
  end

  def rotate
    "#{@shape} rotates #{@direction}"
  end

  def play
    "Playing #{@sound}.#{@extension}"
  end

  def click
    [rotate, play].join("\n")
  end

end

class Square < Shape; end
class Circle < Shape; end
class Triangle < Shape; end
class Amoeba < Shape
  def rotate
    "around a point on one end"
  end
end
[Square.new("square", "Guitar"),
Triangle.new("Triangle", "Drums"),
Circle.new,
Amoeba.new("amoeba", "Nom Nom Nom", "hif")
].each do |shape|
  puts shape.click
  puts
end
