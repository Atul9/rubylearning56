
class Duck
  def quack
    'Quack!'
  end

  def swim
    'Paddle paddle paddle...'
  end
end

class Goose
  def honk
    'Honk!'
  end

  def swim
    'Splash splash splash...'
  end
end

class DuckRecording
  def quack
    play
  end

  def play
    'Quack!'
  end
end

def make_it_quack(duck) # that is just a variable name in an argument list
  duck.quack # duck may be a duck object or just something that responds to 'quack'
end

puts make_it_quack(Duck.new)

puts make_it_quack(DuckRecording.new)

class TrainedDog
  def quack
    'Grrrr...quack'
  end
end

make_it_quack(TrainedDog.new) # => "Grrrr...quack"

def make_it_swim(duck)
  duck.swim
end

puts make_it_swim(Duck.new)

puts make_it_swim(Goose.new)

# >> Quack!
# >> Quack!
# >> Paddle paddle paddle...
# >> Splash splash splash...
