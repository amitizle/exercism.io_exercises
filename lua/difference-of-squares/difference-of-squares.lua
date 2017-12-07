local m = {}

function m.sum_of_squares(n)
  local sum = 0
  for i=1,n do
    sum = sum + math.pow(i, 2)
  end
  return sum
end

function m.square_of_sums(n)
  local sum = 0
  for i=1,n do
    sum = sum + i
  end
  return math.pow(sum, 2)
end

function m.difference_of_squares(n)
  return m.square_of_sums(n) - m.sum_of_squares(n)
end

return m
