
local function binary_search(array, item)
  if #array == 0 then
    return -1
  elseif #array == 1 and array[1] == item then
    return 1
  end
  local low, high = 1, #array
  while low <= high do
    local mid = math.floor((low + high) / 2)
    if array[mid] > item then
      high = mid - 1
    elseif array[mid] < item then
      low = mid + 1
    else
      return mid
    end
  end
  return -1
end

return binary_search
