class String
   def writesize # is this a typographical error?
     self.size # and I removed the puts, because it doesn't make sense to puts it
   end
end
size_writer = "Tell me my size!"
size_writer.writesize # => 16
#So we are making a method for the class string, called writesize4.
#This is called as...? Monkey-patching
#Going throught these ruby programs from the ruby programs page helps alot.
