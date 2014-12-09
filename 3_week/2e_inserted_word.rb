=begin
replace word in given text file
=end
# doctest: REplacing word
# >> replace_word('My world','world', 'people')
# => 'My people'
def replace_word(text,original_word, replaced_word)
  regex = %r[\b#{original_word}\b]
  text.gsub(regex,replaced_word)
end
if __FILE__ == $0
  puts 'Enter the filename you want to edit'
  filename = ARGV[0] || '3wk_2e_text.txt'
  puts 'Contents of the file: '
  File.open(filename,'r') do|file|
    while line = file.gets # This reads line per line
      puts line
    end
  end
  File.open(filename, 'r+') do |file|
    text = file.readlines.join # This creates an Array, and then rejoins the array to make a string.  Why not just use 'read'?
    file.seek(0) # This seeks to the start of the file, but where else would we be if we are just opening a file

    file.write(replace_word(text,'word','inserted word'))
  end
  puts "\nContents of the file after making changes: "
  File.open(filename,'r') do|file|
    while line = file.gets
      puts line
    end
  end
end
