=begin
# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
#  When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and \
# returns the message 'Fizzbuzz'.
# In all other cases, the program simply returns the given number.
=end

require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns fizz when number is a multiple of 3' do
    fizz_3 = fizzbuzz(3)
    expect(fizz_3).to eq 'fizz'
  end

  it 'return buzz when number is a multiple of 5' do
    fizz_5 = fizzbuzz(5)
    expect(fizz_5).to eq 'buzz'
  end

  it 'return fizzbuzz when number is a multiple of 15' do
    fizz_5_and_3 = fizzbuzz(15)
    expect(fizz_5_and_3).to eq 'fizzbuzz'
  end

  it 'returns the given number for one other case' do
    number = 1
    other = fizzbuzz(number)
    expect(other).to eq number
  end

  it 'returns the given number for many other cases' do
    (0..100).each do |number|
      other = fizzbuzz(number)
#      expect(other).to eq number if other != 'fizz' && other != 'fizzbuzz' && other != 'buzz'
      expect(other).to eq number unless other =~ /fizz|buzz/
    end
  end

  it 'returns the given number for many other cases (in another way)' do
    other_numbers = (0..100).select { |n| n%3 != 0 && n%5 != 0 }
    other_numbers.each do |number|
      other = fizzbuzz(number)
      expect(other).to eq number
    end
  end
end