
# doctest: Setup a Grandma object
# >> my_granny = Grandma.new(1950)
class Grandma
  def initialize(remembered_year)
    @remembered_year = remembered_year
    @bye_count = 0
  end

# doctest: yelled? should return false if not yelled
# >> my_granny.yelled? "hi"
# => false
# doctest: yelled? should return nil if silence
# >> my_granny.yelled? ''
# => nil
  def yelled?(words)
    words == words.upcase unless words.empty?
  end
  def heard
    remembered_year = 1930 + rand(20)
    format('NO, NOT SINCE %i', remembered_year)
  end
  def response(said)
    if yelled? said
      if said == 'BYE'
        bye_count += 1
        heard
      else
        bye_count = 0
        heard
      end
    else
      unheard
    end
  end
  def unheard
    'HUH?! SPEAK UP, SONNY!'
  end
end

if __FILE__ == $PROGRAM_NAME
  puts 'HEY,THERE, SONNY! GRANDMA HAS GOT A HEARING PROBLEM. PLEASE SHOUT'
  
end
