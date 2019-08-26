MAX = 4000000

def solution
  n1, n2 = 1, 2
  sequence = [n1, n2]

  loop do
    nextval = n1 + n2
    break if nextval > MAX

    sequence << nextval

    n1 = n2
    n2 = nextval
  end

  sequence.select(&:even?).reduce(:+)
end

puts solution
