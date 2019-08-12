MAX = 4000000

def solution
  sum = 0
  i = 1
  j = 2

  while i <= MAX && j <= MAX
    next_val = i + j

    sum += i if i.even?
    sum += j if j.even?

    j = i
    i = next_val
  end

  sum
end

puts solution
