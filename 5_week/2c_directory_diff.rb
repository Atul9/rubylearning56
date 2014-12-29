=begin

From: Michael Kohl

As a little challenge, here’s the output of my solution, which is more like a
‘diff’ for directories. Maybe you feel like coding something like that:

When calling your program like this: W5C2_directory_diff.rb list.txt new_list.txt

It should give a difference between the old and new directory listing like this:

  - output-redirects/scala-compile-server-out.log
  + bar
  + foo
  + new_list.txt

=end
if ARGV[0].empty?
  puts "Provide file names"
else
  File.open(ARGV[0], 'r') do |f|
    while line = f.gets
      puts " - " + line
    end
  end
  File.open(ARGV[1], 'r') do |f1|
    while line1 = f1.gets
      puts " + " + line1
    end
  end
end
