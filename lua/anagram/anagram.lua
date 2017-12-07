local Anagram = {}

function Anagram.word_to_chars(word)
  local chars = {}
  for i = 1, #word do
    local next_char = word:sub(i, i)
    chars[next_char] = (chars[next_char] or 0) + 1
  end
  return chars
end

function Anagram:new(word)
  local lowercase_word = string.lower(word)
  local chars = Anagram.word_to_chars(lowercase_word)
  obj = {word = lowercase_word, word_chars = chars}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Anagram:is_anagram(maybe_anagram)
  local lowercase_maybe_anagram = string.lower(maybe_anagram)
  local word_chars = self.word_chars
  local maybe_anagram_chars = Anagram.word_to_chars(lowercase_maybe_anagram)
  local chars_count_equal = true
  for char, char_count in pairs(word_chars) do
    if not (maybe_anagram_chars[char] and maybe_anagram_chars[char] == char_count) then
      chars_count_equal = false
      break
    end
  end
  return chars_count_equal and (#maybe_anagram == #self.word)
end

function Anagram:match(maybe_anagrams)
  local anagrams = {}
  for i, maybe_anagram in ipairs(maybe_anagrams) do
    if self:is_anagram(maybe_anagram) then
      table.insert(anagrams, maybe_anagram)
    end
  end
  return anagrams
end

return Anagram
