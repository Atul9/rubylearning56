=begin
Exercise2. Write a Rectangle class. I shall use your class as follows:
r = Rectangle.new(23.45, 34.67) 
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
=end
class Rectangle
  def initialize(length,width)
    @@length = length
    @@width = width
  end
  def perimeter
    2 * (@@length + @@width)
  end
  def area
    @@length * @@width
  end
end
r = Rectangle.new(23.45,34.67)
puts "Area = #{r.area}"
puts "Perimeter = #{r.perimeter}"

