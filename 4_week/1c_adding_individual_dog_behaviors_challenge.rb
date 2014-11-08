=begin
Challenge to add tricks to a dog
=end
# doctest: Setup
# my_dog = Dog.new('Leo')
# doctest: Setup
# >> dog = Dog.new('Fido')
class Dog

  def initialize(name)
    @name = name
    @tricks_known = []
    # We add values to the array by using << to add another element to the array
  end
  # doctest: I can add a trick
  # >> dog.teach_trick(:dance)
  # => [:dance]
  def teach_trick(trick_name)
    @tricks_known << trick_name
  end

  # added an ampersand to the block name, even though it isn't being used.
  def method_missing(method, *args, &block)
    # Are we using method_missing to have the behavior happen?  Then we need to
    # write some code for it.. We are writing method_missing to tell if the
    # object knows which behaviours. It does not know certain behaviour.
    if method #Condition if method doesnt exists
      puts "#{@name} doesn't know how to #{method}"
    end
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
if __FILE__ == $PROGRAM_NAME
  d = Dog.new('Leo')
  # Tested above in a rubydoctest
  d.teach_trick(:dance){"#{@name}is dancing."}
  # That << just pushes a value onto the array that we initialized in initialize method.
  puts d.dance
end
