=begin
Exercise5. Let's say you want to run some Ruby code (such as a call to a shell
command) repeatedly at a certain interval (for example, once every five seconds
for one minute). Write a method for this. Do not use Thread class for now.
Hint: yield and sleep methods may be required.
=end
def call_to_shell(block)
  loop do
    yield block
    sleep 5
  end
end
def call_block
  yield("Command running")
end

call_block {|str| puts str}
call_to_shell(call_block)
