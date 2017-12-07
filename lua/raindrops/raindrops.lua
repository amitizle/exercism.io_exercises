local m = {}
local factors = {
  {3, "Pling"},
  {5, "Plang"},
  {7, "Plong"}
}

local drops = function (num)
  local translated = {}
  for i, factor in ipairs(factors) do
    local mod, str = table.unpack(factor)
    if num % mod == 0 then
      table.insert(translated, str)
    end
  end
  if #translated == 0 then
    return tostring(num)
  else
    return table.concat(translated, "")
  end
end

return drops
