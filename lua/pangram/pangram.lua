
local function is_pangram(str)
  local alphabet = {}
  for ascii = 97, 122 do
    alphabet[string.char(ascii)] = 1
  end
  for letter in string.lower(str):gmatch("%w") do
    if alphabet[letter] then
      alphabet[letter] = alphabet[letter] - 1
    end
  end
  for _, counter in pairs(alphabet) do
    if counter > 0 then
      return false
    end
  end
  return true
end

return is_pangram
