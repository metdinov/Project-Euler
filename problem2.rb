# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

fibonacci = Fiber.new do
  n1 = 1
  n2 = 2
  loop do
    Fiber.yield n1
    n1, n2 = n2, n1 + n2
  end
end

total_sum = 0
begin
  next_fib = fibonacci.resume
  if next_fib % 2 == 0
    total_sum += next_fib
  end
end while next_fib <= 4000000

puts total_sum
