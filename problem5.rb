# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

require 'prime'

smallest_number = Hash.new(0)
20.downto(2) do |i|
  factors = Prime.prime_division(i)
  factors.each do |n, order|
    smallest_number[n] = order > smallest_number[n] ? order : smallest_number[n]
  end
end

result = 1
smallest_number.each do |n, order|
  result *= n ** order
end

puts result
