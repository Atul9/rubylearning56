=begin
Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:

bark(), eat(), chase_cat()
I shall create the Dog object as follows:
d = Dog.new('Leo')
=end
class Dog

  def initialize(name)
    @name = name
  end
  def bark
    "#{@name} is barking. Ruff! Ruff!"
  end
  def eats
    "He eats bones."
  end
  def chase_cat
    'Tom.'
  end
end
d = Dog.new('Leo')
puts d.bark
puts d.eats
puts "He chases #{d.chase_cat}."
puts "His id is #{d.object_id}."
