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

def convert(temperature_in_F)
  5 * (Float(temperature_in_F) - 32) / 9
end
