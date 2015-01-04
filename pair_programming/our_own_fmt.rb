# We want a program that does what String#% does
# I believe this may do just that!  Not as full featured, can you fulfill some
# of the wishes that are made possible like the original String#% method?
class String
  def our_fmt(replacement)
    self.gsub(":fmt:", replacement)
  end
end

puts "This is :fmt: a sample.".our_fmt("now")

puts 'This also :fmt: use single quotes!'.our_fmt('can')
