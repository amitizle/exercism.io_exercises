local m = {}
local tests = {
  function(str) -- Check if string is empty
    return (#str == 0 or nil) and "Fine, be that way."
  end,
  function(str) -- Check if is a question (ends with '?')
    return string.match(str, "%?$") and "Sure"
  end,
  function(str) -- Check if yelling (upper == original)
    return (string.upper(str) == str or nil) and "Whoa, chill out!"
  end
}
local dont_understand = "Whatever"

function m.hey(bob_str)
  for i,test in ipairs(tests) do
    local test_result = test(bob_str)
    if test_result ~= nil then
      return test_result
    end
  end
  return dont_understand
end

return m
