class GF
  @m = 10
  puts m.object_id
  def initialize
    puts 'In GF class'
  end
  def gfmethod
    pts 'GF method call'
  end
end
# calss F subclass of GF
class F < GF
  def initialize
    super
    put 'In F class'
  end
end
# clas S sub-class of F
class S < F
  def initialize
    super
    puts @m
    puts @m.object_id
    puts 'In S class'
  end
end

