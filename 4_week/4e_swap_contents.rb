=begin
Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the
following. Take two text files say A and B. The program should swap the
contents of A and B. That is after the program is executed, A should contain
B's contents and B should contains A's contents.
=end
=begin
Following code for small files:

def filereadwrite(file1, file2)
  f1 = File.open(file1,"r")
  f2 = File.open(file2, "w")
  while line = f1.gets
    f2.puts line
  end
  f1.close
  f2.close
end
filereadwrite("A.txt","temp.txt")
filereadwrite("B.txt","A.txt")
filereadwrite("temp.txt","B.txt")
=end

def swap_contents(file1,file2)
  # How do we guard against overwriting files that may already exist?  So that we don't accidentally overwrite them?yes.o
  temp_file = Time.now.year.to_s + Time.now.month.to_s + Time.now.hash.to_s + ".tmp"
  system 'mv', file1, temp_file
  system 'mv', file2, file1
  system 'mv', temp_file, file2
end
swap_contents('a1.txt','b1.txt')
# Yes, this is fine.
# There is some concern here though, in that the file temp1.txt could exist and could easily be overwritten.
# The name of the method is also not very descriptive.
# perhaps swap_contents(file1, file2)
# and filereadwrite is hard to read, can't tell if it is filer eadw rite or
# where the words break down. of course, that breakdown is not sensible.
# file_read_write would have been better, still it doesn't describe the idea of
# the method very well.
#
# This works well, and the temp_file is gone if the operating is successful. yes.
# OK, you can work on it in here as well.

