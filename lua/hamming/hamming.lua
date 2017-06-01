
local m = {}

function m.compute(dna1, dna2)
  if string.len(dna1) ~= string.len(dna2) then
    return -1
  end
  local diff = 0
  local i = 1
  for c in dna1:gmatch(".") do
    if c ~= dna2:sub(i, i) then
      diff = diff + 1
    end
    i = i + 1
  end
  return diff
end

return m
