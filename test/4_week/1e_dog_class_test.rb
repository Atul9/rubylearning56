require 'minitest/autorun'
require 'minitest/pride'
require '1e_dog_class'

describe Dog do
  before do
    @fido = Dog.new('Fido')
    @required_methods = %w(eat bark chase_cat).map {|m| m.intern}
  end
  it 'must respond to the three methods, eat, bark and chase_cat' do
    @required_methods.all? {|m| @fido.respond_to?(m) }.must_equal true, 'You have not defined all of the required methods, yet'
  end
  it 'must not return nil for any of the methods' do
    [:bark, :eat, :chase_cat].all? {|method|  @fido.send(method) }.must_equal true
  end
  it 'must not output simply by calling the method' do
    @fido.bark.must_equal "Fido is barking. Ruff! Ruff!", 'You are likely using puts or print in your method.'
  end
end


