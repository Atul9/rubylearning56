=begin
Exercise6:
Write a Deaf Grandma program.
Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!,
unless you shout it (type in all capitals).
If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938!
To make your program really believable, have grandma shout a different year each time;
maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.
Adapted from Chris Pine's Book.
For example:
You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!
=end
puts  'HEY THERE, SONNY! GRANDMA HAS GOT A HEARING PROBLEM SO PLEASE SHOUT'
while true
  said = gets.chomp
  if said == 'BYE'
    puts 'BYE SWEETIE!'
    break
  end
  if said != said.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    random_year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + random_year.to_s + '!'
  end
end
=begin
#Just to check how bye would work
def bye?(get)
  if get.chomp == "BYE"
  puts 'bye'
  exit
  else
    puts 'Say something...'
  end

end
bye?(gets)
=end
