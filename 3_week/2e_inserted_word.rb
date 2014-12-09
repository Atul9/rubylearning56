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
  puts File.open(filename, 'r').read
  File.open(filename, 'r+') do |file|
    text = file.readlines.join 
    file.seek(0)

    file.write(replace_word(text,'word','inserted word'))
  end
  puts "\nContents of the file after making changes: "
  File.open(filename,'r') do|file|
    while line = file.gets
      puts line
    end
  end
end
