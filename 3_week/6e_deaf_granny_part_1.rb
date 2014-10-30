# rubocop:disable Style/BlockComments
=begin
Exercise6:
Write a Deaf Grandma program.
Whatever you say to grandma (whatever you type in), she should respond with
HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals).
If you shout, she can hear you (or at least she thinks so) and yells back, NO,
NOT SINCE 1938!
To make your program really believable, have grandma shout a different year
each time; maybe any year at random between 1930 and 1950. You can't stop
talking to grandma until you shout BYE.
Adapted from Chris Pine's Book.
For example:
You enter:
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!
Grandma responds: HUH?! SPEAK UP, SONNY!
=end
# doctest: yelled will return true if it is all uppercased
# >> yelled? 'HELLO'
# => true
# doctest: yelled will return false if it is not all upcased
# >> yelled? 'Not yelled'
# => false
# >> !! yelled?('')
# => false
def yelled?(words)
  words == words.upcase unless words.empty?
end

def heard
  remembered_year = 1930 + rand(21)
  format('NO, NOT SINCE %i!', remembered_year)
end

def unheard
  'HUH?! SPEAK UP, SONNY!'
end

if __FILE__ == $PROGRAM_NAME # library guard or application guard
  puts 'HEY THERE, SONNY! GRANDMA HAS GOT A HEARING PROBLEM SO PLEASE SHOUT'
  until 'BYE' == said = gets.chomp # rubocop:disable Lint/AssignmentInCondition
    if yelled? said
      puts heard
    else
      puts unheard
    end
  end
  puts 'BYE SWEETIE!'
end
