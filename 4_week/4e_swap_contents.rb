=begin
Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the
following. Take two text files say A and B. The program should swap the
contents of A and B. That is after the program is executed, A should contain
B's contents and B should contains A's contents.
=end
=begin
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

def filereadwrite(file1,file2)
  system 'mv', file1, "temp1.txt"
  system 'mv', file2, file1
  system 'mv', "temp1.txt", file2
end
filereadwrite('a1.txt','b1.txt')
