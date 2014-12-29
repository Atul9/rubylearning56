# p045handexcp.rb
def default_raise_and_rescue
  begin 
    puts 'I am before the raise.'
    raise SyntaxError, 'An error has occured.'
    puts 'I am after the raise.'
  rescue RuntimeError => e
    puts "We rescued your #{e.class}"
    e.class # => 
  end
  puts 'I am after the begin block.'
end
# default_raise_and_rescue # => 

class AtulError < Exception
  def message
    "You need to consult with Atul!"
  end
end
def custom_raise_and_rescue
  puts "I am before the raise."
  raise AtulError
  puts "I am after the AtulError."
rescue => e
  puts e.backtrace.inspect # => 
end
custom_raise_and_rescue











# >> I am before the raise.

# ~> AtulError
# ~> You need to consult with Atul!
# ~>
# ~> /tmp/seeing_is_believing_temp_dir20141223-6649-15f1rm5/program.rb:22:in `custom_raise_and_rescue'
# ~> /tmp/seeing_is_believing_temp_dir20141223-6649-15f1rm5/program.rb:27:in `<main>'
