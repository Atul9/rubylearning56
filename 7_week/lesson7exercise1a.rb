require_relative 'lesson7exercise1.rb'
obj = Klass.new("hello")
File.open('savedKlass','w+') do |f|
  Marshal.dump(obj,f)
end
puts "Object Serialized to file"

File.open('savedKlass') do |f|
  read_obj = Marshal.load(f)
  puts read_obj
  puts read_obj.say_hello
end

puts "Object read from file"
