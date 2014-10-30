=begin
Exercise 1
=end
class Dog

  def initialize(name)
    @name = name
  end
  def bark
    'barks'
  end
  def eats
    'eats bones'
  end
  def chase_cat
    'chases Tom'
  end
end
d = Dog.new('Leo')
puts "#{d} #{d.bark}"
puts d,' ', d.eats
puts d,' ',d.chase_cat
