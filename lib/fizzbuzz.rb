=begin
# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
#  When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and \
# returns the message 'Fizzbuzz'.
# In all other cases, the program simply returns the given number.
=end

def fizzbuzz(number)
  if number % 15 == 0  # If number is divisible by 15
    'fizzbuzz'
  elsif number % 3 == 0 # If number is divisible by 3
    'fizz'
  elsif number % 5 == 0  #  If number is divisible by 5
    'buzz'
  else
    number
  end
end

