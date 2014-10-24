=begin
replace word in given text file
=end
def replace_word(text,original_word, replaced_word)
  regex = %r[\b#{original_word}\b]
  text.gsub(regex,replaced_word)
end
filename = '/home/atul/RubyLearning/CoreBatch/56/3_week/3wk_2e_text.txt'
puts 'Contents of the file: '
File.open(filename,'r') do|file|
  while line = file.gets
    puts line
  end
end
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
