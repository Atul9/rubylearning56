# Exercise7. First of all, I'd like to thank Peter Cooper for allowing me to use
# this exercise.
#
# The application you're going to develop will be a text analyzer. You will be
# working on it this and next week. Your Ruby code will read in text supplied in
# a separate file, analyze it for various patterns and statistics, and print out
# the results for the user. It's not a 3D graphical adventure or a fancy Web
# site, but text processing programs are the bread and butter of systems
# administration and most application development. They can be vital for parsing
# log files and user-submitted text on Web sites, and manipulating other textual
# data. With this application you'll be focusing on implementing the features
# quickly, rather than developing an elaborate object-oriented structure, any
# documentation, or a testing methodology.
#
# Your text analyzer will provide the following basic statistics:
#
# Character count
# Character count (excluding spaces)
# Line count
# Word count
# Sentence count
# Paragraph count
# Average number of words per sentence
# Average number of sentences per paragraph
# In the last two cases, the statistics are easily calculated from the word
# count, sentence count, and paragraph count. That is, once you have the total
# number of words and the total number of sentences, it becomes a matter of a
# simple division to work out the average number of words per sentence.
#
# Before you start to code, the first step is to get some test data that your
# analyzer can process. You can find the text at:
# http://rubylearning.com/data/text.txt
#
# Save the file in the same folder as your other Ruby programs and call it
# text.txt. Your application will read from text.txt by default (although you'll
# make it more dynamic and able to accept other sources of data later on).
#
# Let me outline the basic steps you need to follow:
#
# Load in a file containing the text or document you want to analyze.
# As you load the file line by line, keep a count of how many lines there are
# (one of your statistics taken care of).
# Put the text into a string and measure its length to get your character count.
# Temporarily remove all whitespace and measure the length of the resulting
# string to get the character count excluding spaces.
# Split on whitespace to find out how many words there are.
# Split on full stops (.), '!' and '?' to find out how many sentences there are.
# Split on double newlines to find out how many paragraphs there are.
# Perform calculations to work out the averages.
# Name this program analyzer.rb. or 3_week/7e_document_stats.rb

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
Characters: #{characters text}
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
  text = File.read('text.txt')
  puts 'Statistics for your file:'
  puts statistics_report text
end
