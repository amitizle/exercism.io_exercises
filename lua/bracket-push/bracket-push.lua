local Stack = {}

function Stack:new()
  obj = {impl = {}}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Stack:push(item)
  table.insert(self.impl, item)
  return true
end

function Stack:pop()
  local popped = table.remove(self.impl, #self.impl)
  return popped
end

function Stack:empty()
  return #self.impl == 0
end

local m = {}

function m.valid(str)
  local stack = Stack:new()
  for i = 1, #str do
    local char = str:sub(i, i)
    if char == '(' or char == '{' or char == '[' then
      stack:push(char)
    elseif char == ')' and stack:pop() ~= '(' then
      return false
    elseif char == '}' and stack:pop() ~= '{' then
      return false
    elseif char == ']' and stack:pop() ~= '[' then
      return false
    end
  end
  return stack:empty()
end

return m
