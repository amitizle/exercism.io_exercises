
local Matrix = {}

function Matrix.row(matrix, row_num)
  return matrix[row_num]
end

function Matrix.column(matrix, col_num)
  local col = {}
  for _, row in ipairs(matrix) do
    table.insert(col, row[col_num])
  end
  return col
end

function Matrix.build_matrix(matrix_str)
  local matrix = {}
  local curr_row = {}
  for str_num in matrix_str:gmatch("%d+[%s$\n]?") do
    local num = tonumber(str_num)
    table.insert(curr_row, num)
    if str_num:match(".*\n") then
      table.insert(matrix, curr_row)
      curr_row = {}
    end
  end
  table.insert(matrix, curr_row)
  return matrix
end

local function matrix_obj(matrix_str)
  local matrix = Matrix.build_matrix(matrix_str)
  local funcs_map = {
    row =     function(num) return Matrix.row(matrix, num) end,
    column =  function(num) return Matrix.column(matrix, num) end
  }
  return funcs_map
end

return matrix_obj
