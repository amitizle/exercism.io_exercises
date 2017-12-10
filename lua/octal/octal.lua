
local m = {}

function m.to_decimal(str)
  local decimal = 0
  for i = #str, 1, -1 do
    local next_char = str:sub(i, i)
    local digit = tonumber(next_char)
    if not digit or digit >= 8 then
      return 0
    end
    decimal = decimal + digit * (8 ^ (#str - i))
  end
  return decimal
end

local fun = function(str)
  local fun_map = {}
  for func_name, func in pairs(m) do
    fun_map[func_name] = function() return func(str) end
  end
  return fun_map
end
return fun
