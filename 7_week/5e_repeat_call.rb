=begin
Exercise5. Let's say you want to run some Ruby code (such as a call to a shell
command) repeatedly at a certain interval (for example, once every five seconds
for one minute). Write a method for this. Do not use Thread class for now.
Hint: yield and sleep methods may be required.
=end
def call_to_shell(interval: 5, duration: 5 , behavior: -> {fail ArgumentError, "We need some behaivior:  Provide a lambda or proc?"} )
  duration.times do
    behavior.call # We don't need an if, due to the protective default behavior.
    sleep interval
  end
end
a = -> { puts "Command running" }

call_to_shell(interval: 1, duration: 3, behavior: a)
call_to_shell # This one will raise an informative error
