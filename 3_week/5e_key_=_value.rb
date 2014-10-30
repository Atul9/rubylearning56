=begin
Exercise5. Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains key and s2 contains value.
Hint: Use some of the String functions.
=end
s = 'key=value'
s1, _, s2 = s.scan(/\w+|=/)
puts 's: ',s,'s1: ',s1,'s2: ',s2
# _  is legitimate var name, but usually used for throwaway values
# Another solution:
# s1, s2 = s.split('=')
# => ["key","value"]
