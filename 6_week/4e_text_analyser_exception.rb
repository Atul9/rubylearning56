=begin
Exercise4. Modify your TextAnalyzer program to add the exception feature.
=end

class Analyzer
  # doctest: Word count "This is a number of words."
  # >> words "This is a number of words."
  # => 6
  def words(text)
    text.split.size
  end

  # filename = 'text.txt'
  # doctest: Line count "Line1 \n Line2"
  # >> lines "Line1\nLine2"
  # => 2
  def lines(text)
    text.lines.size
  end

  # doctest: character count "Hello world"
  # >> characters "Hello world"
  # => 11
  def characters(text)
    text.length
  end

  # doctest: character with no spaces
  # >> character_without_spaces "I\nhave\ta\tlot\n\sof whitespace."
  # => 22
  def character_without_spaces(text)
    text.split.join.size
  end

  # doctest: paragraph count
  # >> paragraphs "Para1\n\nParad"
  # => 2
  def paragraphs(text)
    text.split($/).size # Use the Record Separator global variable!
  end

  # doctest: sentence count
  # >> sentences "Hello\t world. Is this\n my program?\nYes, it is!"
  # => 3
  def sentences(text)
    text.split(/[\.\?\!]/).length
  end

  # doctest: avg number of word per sentenc
  # >> average_words_per_sentence(
  #    "There are 7 words in this sentence. And there are 8 in this one now!")
  # => 7.5
  def average_words_per_sentence(text)
    words(text).to_f / sentences(text)
  end

  # doctest: average number of sentences per paragrapg
  # >> average_sentences_per_paragraph(
  #    "Hello! This is para 2. Line 2.\n\nPara3. Line 1.")
  # => 2.5
  def average_sentences_per_paragraph(text)
    sentences(text).to_f / paragraphs(text)
  end

  def statistics_report(text, rounding = 2)
    <<-EOS
 Characters: #{characters(text)}
 Characters minus whitespace: #{character_without_spaces(text)}
 Words: #{words text}
 Lines: #{lines text}
 Paragraphs: #{paragraphs text}
 Sentences: #{sentences text}
 Average sentences per paragraph: #{
  average_sentences_per_paragraph(text).round(rounding)}
 Average words per paragraph: #{average_words_per_sentence(text).round(rounding)}
    EOS
  end
end
if __FILE__ == $PROGRAM_NAME
=begin
doctest: read in the first line of the file, to check for line endings
>> line = File.new('text.txt', 'r').readlines[0]
>> line =~ /\r\n/
=> 63
doctest: Testing for record separator
>> $/
=> "\n"
doctest: Change the record separator
>> $/ = "\r\n"
>> "Now is the\r\nLine separated?\r\n".split($/)
=> ''
doctest: old separator
>> old_record_separator = "\n"
=> "\n"
>> $/ = "\r\n"
=> "\r\n"
=end
  require 'logger'
  original_record_separator = $/
    file = File.open(ARGV[0] || 'text.txt' , "r")
  text = file.read
  print "Please provide a name for log file"
  logfile = gets.chomp
  logfile = 'log.log' if logfile.empty?
  begin
    log = Logger.new(logfile, 'weekly')
    a = Analyzer.new
    $/ = "\r\n" if /\r\n/ =~ text
    puts 'Statistics for your file:'
    puts a.statistics_report text
    log.info("Log file created for #{file}")
  rescue Exception => e
    log.error "#{e.class} Error occured"
    puts "#{e.class} Error occured."
  end
  $/ = original_record_separator
end
