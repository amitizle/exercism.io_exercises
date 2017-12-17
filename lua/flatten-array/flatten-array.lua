
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

local function flatten_recursive(array, result_table)
  for _, val in ipairs(array) do
    if type(val) == "table" then
      flatten_recursive(val, result_table)
    else
      table.insert(result_table, val)
    end
  end
  return result_table
end

local function flatten(array)
  if not is_array(array) then
    return nil
  end
  return flatten_recursive(array, {})
end

return flatten
