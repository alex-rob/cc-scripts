local function findItem(name)
  -- Loop through each inventory slot until the named item is found
  local numSlots = 16

  for i = 1,numSlots do
    local detail = turtle.getItemDetail(i)
  end
end

return { findItem = findItem }