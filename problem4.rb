# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

require 'set'

def is_palindrome?(number)
  x = 0
  y = number
  while y != 0 do
    x = x * 10 + y % 10
    y /= 10
  end
  x == number
end

palindrome_set = Set.new
999.downto(100) do |x|
  999.downto(100) do |y|
    if is_palindrome?(x * y)
      palindrome_set << x * y
      break
    end
  end
end

puts palindrome_set.max
