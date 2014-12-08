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
  text.split(/\n\n/).size
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
 puts Average words per paragraph: #{
 average_words_per_sentence(text).round(rounding)}
  EOS
end

if __FILE__ == $PROGRAM_NAME
  file = File.open(ARGV[0] , "r")
  text = file.read
  puts 'Statistics for your file:'
  puts statistics_report text
end
