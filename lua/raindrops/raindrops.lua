
local m = {}
local factors = {
  Pling = 3,
  Plang = 5,
  Plong = 7
}

function m.drops(num)
  local translated = {}
  for replacement, factor in ipairs(factors) do
    print(factor, replacement)
    if num % factor == 0 then
      print("YAY")
      translated = table.insert(translated, replacement)
    end
  end
  if #translated == 0 then
    return tostring(num)
  else
    return table.concat(translated, "")
  end
end

return m.drops
