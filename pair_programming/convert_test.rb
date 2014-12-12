require 'minitest/autorun'
require 'minitest/pride'

describe 'Convert method' do
  it 'must return -40 for -40F' do
    convert(-40).must_equal -40, 'Temperature should be -40'
  end
end

describe "testing must_be_empty" do
  it 'must be empty' do
    [].must_be_empty
    ''.must_be_empty
    {}.must_be_empty
  end
end

describe "testing must_output" do
  it 'must output' do
    lambda { puts "something"}.must_output "something\n"
  end
end

describe "testing must_raise" do  # Throw and Catch go together
  it 'must raise' do
    my_lambda = -> { convert("Hello") } # We want to test
    # for an exception.  We have not talked about catch and throw
    my_lambda.must_raise ArgumentError
  end
end
describe "testing wont_be_empty" do
  it  'wont be empty' do
    [1, 2, 3].wont_be_empty
    'Hello'.wont_be_empty
    {:two => 2}.wont_be_empty
  end
end

describe "testing wont equal" do
  it 'wont be equal' do
    [1].wont_equal 1
  end
end

describe "testing wont be nil" do
  it 'wont be nil' do
    [10].wont_be_nil
    'Hello'.wont_be_nil
    {blue: 2}.wont_be_nil
  end
end
=begin
describe "testing must be silent" do
  it 'must be silent' do
    (5).must_be_silent
  end
end
=end
def convert(temperature_in_F)
  5 * (Float(temperature_in_F) - 32) / 9
end
describe "Testing must_be_instance_of" do 
  it 'must be instance of' do
    2.must_be_instance_of Fixnum
    'Hello world'.must_be_instance_of String
    14.50.must_be_instance_of Float
    {yellow: 5}.must_be_instance_of Hash
    [1, 2].must_be_instance_of Array
  end
end

describe "TEsting wont_include" do
  it 'wont include' do
    [1, 2].wont_include 3
    {yellow: 5, zero: 0}.wont_include :one
    {"Hello" => "world"}.wont_include "world" #Incase of a hash itfetches for the keyand not the value
  end
end
