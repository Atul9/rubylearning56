# p030motorcycle.rb
class MotorCycle
  def initialize(make, color)
    # Instance variables
    @make = make
    @color = color
  end
  def startEngine
    if (@engineState)
      puts 'Engine Running'
    else
      puts 'Engine Idle'
      @engineState = true
    end
    @engineState
  end
  def display
    @make + " " + @color
  end
end
#m = MotorCycle.new('YAMAHA', 'black')
#puts m.display
#puts m.startEngine








# >> Engine Idle
# >> 
