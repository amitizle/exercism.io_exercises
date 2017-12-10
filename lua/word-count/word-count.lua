
local m = {}

function m.word_count(sentence)
  local words = {}
  for word in string.lower(sentence):gmatch("%w+") do
    words[word] = (words[word] or 0) + 1
  end
  return words
end

return m
