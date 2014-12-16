=begin
Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays
on the screen all the files in the current folder as well as everything in all
its sub folders, in sorted order. Make use of Dir.glob method as follows:

Dir.glob('**/*')
Name this program inventory.rb. Create an inventory file by typing the
following at the command prompt:
ruby inventory.rb > old-inventory.txt
After a few days, when some files would have been added / deleted from this
folder, run the program again like:
ruby inventory.rb > new-inventory.txt
Now, write another Ruby script that displays on the screen all the files that
have been added in this folder since the time the old-inventory.txt was
created.
=end
def display
  puts Dir.glob('**/*').sort
end
#display
def find_new_files(new,old)
  IO.readlines(new) - IO.readlines(old)
end
puts find_new_files('new-inventory.txt','old-inventory.txt')
#puts (IO.readlines('old-inventory.txt') - IO.readlines('new-inventory.txt')) # Used readlines since readline is a private method of the class IO. readlines is public.
#arr1 = IO.readlines('old-inventory.txt')
#arr2 = IO.readlines('new-inventory.txt')

#puts arr2 - arr1
#puts [1,2,3] - [2,3,4] # We expect to see 1, as 2 and 3 are removed and 4 doesn't exist to remove from the array. Oh yes I got my mistake.
#puts arr2 - arr1
#puts [1,2,3] - [2,3,4] # We expect to see 1, as 2 and 3 are removed and 4 doesn't exist to remove from the array.
