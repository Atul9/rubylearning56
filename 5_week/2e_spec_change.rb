=begin
The Really Annoying Project Manager (Yes Boss) has made a spec change!

"There will be an amoeba shape on the screen, with the others. When the user
clicks on the amoeba, it will rotate like the others, and play a .hif sound
file. The other figures like rectangle rotate around the center. I want the
amoeba shape to rotate around a point on one end, like a clock hand !"
=end
class Shape
  # Do we really want to use the shape sound direction and extension as "positional arguments"?  or could we improve by passing in 
  # a hash as our arguments to our shapes?
  def initialize(shape: nil, sound: nil, direction: 'by 360 degrees', extension: 'aif')
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
  def initialize(*args)  # it is a collection of arguments, it becomes separate (exploded array) of arguments.
    super
    @extension = 'hif'
  end
  def rotate
    "around a point on one end"
  end


  def play
    "#{@shape}.#{@extension}"
  end
end

[Square.new,
Triangle.new,
Circle.new,
=begin
doctest: Ameoba will automatically be different
>> my_ameoba = Amoeba.new
>> my_ameoba.rotate
=> "around a point on one end"
>> my_ameoba.play
=> "Amoeba.hif"
=end
Amoeba.new(shape: "amoeba", sound: "Nom Nom Nom", extension: "hif")
].each do |shape|
  puts shape.click
  puts
end

