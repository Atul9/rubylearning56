require 'minitest/autorun'
require 'minitest/pride'
require './4_week/playfair_cipher'

describe 'normalize data' do
  it 'must make all characters uppercase' do
    normalize_data('freedom').must_equal %w(F R E X E D O M) 
  end
end

describe 'matrix' do
  it '5 x 5 square of characters' do
    skip
    matrix('playfair').must_equal 'P L A Y \nF I R E X M\nB C D G H\nK N O Q S\nT U V W Z'
  end
end
