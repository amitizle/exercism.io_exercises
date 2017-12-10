
local function is_array(maybe_array)
  if type(maybe_array) ~= "table" then
    return false
  end
  local curr_i = 1
  for i, _ in pairs(maybe_array) do
    if i ~= curr_i then
      return false
    end
    curr_i = curr_i + 1
  end
  return true
end

local function flatten(array)
  if not is_array(array) then
    return nil
  end
  local concatenated = {}
  if #array == 0 then
    return {}
  end
  for _, item in ipairs(array) do
    if type(item) == "table" then
      for _, i in ipairs(flatten(item)) do
        table.insert(concatenated, i)
      end
    else
      table.insert(concatenated, item)
    end
  end
  return concatenated
end

return flatten
