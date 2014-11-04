=begin
Exercise2. Write a Rectangle class. I shall use your class as follows:
r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
=end
class Rectangle
  attr_reader :perimeter, :area

  # because without this method, that means that obviously the attr :perimeter
  # does exactly what the method below does.
  # def perimeter
  #   @perimeter
  # end
  # doctest: Setup rectangle for use
  # >> rectangle = Rectangle.new 2, 4
  def initialize(length,width)
    @perimeter = 2 * (length + width)
    @area = length * width
  end
  # First thing yo do is write the tests... use something simple like 2, 4
  # for length and width.  Remember to set up one resource we can use in
  # the tests, and I will do that part...
  # doctest: This should return 12
  # >> rectangle.perimeter
  # => 12
  # doctest: This should return 8
  # >> rectangle.area
  # => 8
end
r = Rectangle.new(23.45,34.67)
puts "Area = #{r.area}"
puts "Perimeter = #{r.perimeter}"

