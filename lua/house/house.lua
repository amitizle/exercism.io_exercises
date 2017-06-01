
local m = {}

local base_case = "This is the house that Jack built."
local verses_parts = {
  {"malt", "lay in"},
  {"rat", "ate the"},
  {"cat", "killed the"}
}

local suffix = "the house that Jack built."

function m.verse(verse_num)
  if verse_num == 1 then
    return base_case
  else
    verse_helper(verse_num)
  end
end

function verse_helper(verse_num)
  local results_table = {"This is the"}
  for i=verse_num,1,-1 do
    local next_str = ""
    results_table = results_table.insert(results_table, "")
  end
end

return m
