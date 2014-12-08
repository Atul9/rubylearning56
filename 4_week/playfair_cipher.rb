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

def input_text(text)
  letter = text.upcase
  letter
end
def matrix(text)
  alphabet = input_text(text)
  square = Array.new(5)
  5.times do |i|
    5.times do |j|
      square[i][j] = alphabet #Need to work on this
    end
  end
end
  matrix("I Love Ruby.")
  matrix("play fair example")
=begin
  doctest: Create a 5x5 table for "playfair example"
  >> display("playfair example")
  => P L A Y F
     I R E X M
     B C D G H
     K N O Q S
     T U V W Z
=end
def display(text)
  puts matrix(text)
end
