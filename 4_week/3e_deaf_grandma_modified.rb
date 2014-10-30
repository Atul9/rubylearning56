# doctest: Setup a Grandma object
# >> my_granny = Grandma.new
class Grandma
  attr_reader :byes
  def initialize
    @byes = 0
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
        @byes += 1
        heard
      else
        @byes = 0
        heard
      end
    else
      unheard
    end
  end
  # Your window over here disappears?  It could just be a refresh issue in the
  # browser.
  def unheard
    'HUH?! SPEAK UP, SONNY!'
  end
  # doctest: done? is true if BYE is said three timess consecutively
  # >> 3.times { my_granny.response('BYE') }
  # >> my_granny.done?
  # => true
  # doctest: done? is false if BYE is said three times but not consecutivly
  # >> my_granny.response('BYE')
  # >> my_granny.response('something else')
  # >> my_granny.response('BYE')
  # >> my_granny.response('BYE')
  # >> my_granny.done?
  # => false
  # doctest: done? is false if you yelled at Granny
  # >> my_granny.response('HELLO')
  # >> my_granny.done?
  # => false
  # doctest: done? is false if you do not yell at Granny
  # >> my_granny.response('hello')
  # >> my_granny.done?
  # => false
  def done?
    byes == 3
  end
  # doctest: Test string
  # >> my_granny.asks question: "Hey", test: 'My answer'
  # => "My answer"
  def asks(question: 'some default message', test: false)
    print question unless test
    test || gets.chomp
  end
end

if __FILE__ == $0
  puts 'HEY,THERE, SONNY! GRANDMA HAS GOT A HEARING PROBLEM. PLEASE SHOUT'
  my_granny = Grandma.new

  # We need to write a set of code that we might like to have...
  until my_granny.done?
    answer = my_granny.asks(question: 'What is up, Sonny? ')
    puts my_granny.response(answer)
  end
  puts 'BYE SWEETIE'
end
