# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fiboEvenSum(max)
  sequence([1,2], max).inject(0) do | sum, i |
    if i%2 == 0 
      sum + i
    else
      sum
    end
  end
end

def sequence(start, max)
  a, b = start
  while (a + b) < max
    a, b = b, a + b
    start.append(b)
  end
  return start
end


# Much simpler solution from Stack Overflow
def so(max)
  a, b = 1, 2
  sum = 2

  while (c = a + b) < max do
    sum += c if c % 2 == 0
    a, b = b, c
  end

  puts sum
end

puts("Project Euler: Problem 2: Even Fibonacci Numbers")
puts("***********************************************")
puts(fiboEvenSum(10), fiboEvenSum(10) == 10)
puts(fiboEvenSum(4000000))

so(4_000_000)
