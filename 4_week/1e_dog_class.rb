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
  def myname
    @name
  end
  def bark
    'Ruff! Ruff!'
  end
  def eats
    'eat bones'
  end
  def chase_cat
    'Tom'
  end
end
d = Dog.new('Leo')
puts "My name is #{d.myname}.\n #{d.bark}"
puts "I eat #{d.eats}"
puts "I chase #{d.chase_cat}"
puts "My id is #{d.object_id}"
