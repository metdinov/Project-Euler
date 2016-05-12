# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_factor(number)
  upper_bound = number / 2

  upper_bound.downto(2) do |n|
    if number % n == 0 && n.prime?
      return n
    end
  end
  1
end

puts largest_factor(600851475143)
