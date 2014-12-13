=begin
Step 1: Write the snippet to make the 5 x 5 square table.

Example 1: Using "playfair example" as the key, the table becomes:

P L A Y F
I R E X M
B C D G H
K N O Q S
T U V W Z

Example 1: Using "I Love Ruby." as the key, the table becomes:

I L O V E
R U B Y A
C D F G H
K M N P Q
S T W X Z
=end

=begin
doctest: We normalize data by making it all caps
>> normalize_data('hello world')
=> "HELLO WORLD"
=end
def normalize_data(text)
  letters = text.upcase.split(//) - [' ', '.', 'J'] # => ["I", "L", "O", "V", "E", "R", "U", "B", "Y"]
  alphabet = letters + (('A'..'Z').to_a - letters) # => ["I", "L", "O", "V", "E", "R", "U", "B", "Y", "A", "C", "D", "F", "G", "H", "J", "K", "M", "N", "P", "Q", "S", "T", "W", "X", "Z"]
  alphabet.each_with_index {|c, i| alphabet[i] = 'I' if c == 'J' }
end

=begin
doctest: Inserting a letter in an existing string
>> identical('FREEDOM')
=> 'FREXEDOM'
=end
#rerun -- rubydoctest 4_week/playfair_cipher.rb
#rerun -- ruby test/4_week/play_fair_cipher_test.rb
def identical(text)
  text = text.scan(/[A-Z]/).join
  char_insert = ''
  text.each_char.with_index do |c, i|
    if i.odd?
      if text[i-1] == text[i]
        char_insert = if text[i] == 'X' ? 'Z' : 'X'
                        text.insert(i,char_insert)
                       # next
                      end
        char_insert = 'Z'
      end
    end
    text
  end
end

def matrix(text, size = 5)
  alphabet = normalize_data(text)
  square = Array.new(size) {''} # => ["", "", "", "", ""]
  size.times do |i|
    size.times do |j|
      square[i][j] = alphabet  # => 
    end
  end
  square # => 
end
=begin
  doctest: Create a 5x5 table for "playfair example"
  >> result("playfair example")
  => P L A Y F
     I R E X M
     B C D G H
     K N O Q S
     T U V W Z
=end
def result(text)
  matrix(text)
end
if __FILE__ == $0
  matrix("I Love Ruby.") # => 
  matrix("play fair example") # => 
end
