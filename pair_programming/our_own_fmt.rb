# We want a program that does what String#% does
class String
  def our_fmt(replacement)
    self.gsub(":fmt:", replacement)
  end
end

puts "This is :fmt: a sample.".our_fmt("now")

