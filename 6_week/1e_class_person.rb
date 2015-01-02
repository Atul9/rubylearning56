=begin
Write a class called Person that has balance as an instance variable and make it readable via an accessor.
=end
class Person
  attr_reader :balance
  def initialize(balance)
    @balance ||= balance
  end
end
p = Person.new('stable')
puts p.balance
q = Person.new(900000)
puts q.balance
