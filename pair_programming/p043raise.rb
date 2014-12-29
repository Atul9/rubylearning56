# p043raise.rb
def raise_exception(message='correct_input')
    puts 'I am before the raise.'
    fail 'An error has occured' if message == 'wrong_input'
    return puts 'I am after the raise'
  rescue RuntimeError => e
    puts "Nothing is ran after raise, but I can rescue it... your error message is \"#{e.message}\""
end
raise_exception
raise_exception 'wrong_input'
#Once an exception is raised. The statements following dont get executed right?
