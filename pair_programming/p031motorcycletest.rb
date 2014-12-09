
require_relative 'p030motorcycle'

m = MotorCycle.new('Yamaha', 'red')

m.startEngine



class MotorCycle

  def dispAttr # Monkey Patching (Overriding) methods of the class from filep030

    puts 'Color of MotorCycle is ' + @color

    puts 'Make  of MotorCycle is ' + @make

  end
  def display
    "I am overwritting the existing method of display in the original class"
  end

end

puts m.dispAttr

puts m.startEngine
puts m.display

puts "Class is #{ self.class}"

puts "I am #{self}"

puts "I have the following instance_methods #{ MotorCycle.instance_methods(false).sort}"

