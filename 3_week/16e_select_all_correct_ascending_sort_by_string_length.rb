=begin
Exercise16. Select all correct ways to do an ascending sort by string length.
a = ["Magazine", "Sunday", "Jump"]
Answers:
1. a.sort
2. a.sort { |s| s }
3. a.sort { |l, r| l <=> r }
4. a.sort { |l, r| l.length <=> r.length }
5. a.sort_by { |s| s }
6. a.sort_by { |s| s.length } 
=end

#4. a.sort { |l, r| l.length <=> r.length }
#6. a.sort_by { |s| s.length 

#Are the correct ways to do an ascending sort by string length.
