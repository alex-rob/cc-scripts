local function findItem(name)
  -- Loop through each inventory slot until the named item is found
  local numSlots = 16

  -- Format search term for backend
  local needle = string.gsub(string.lower(name), " ", "_")

  for i = 1,numSlots do
    local detail = turtle.getItemDetail(i)
    local pos = string.find(detail.name, ":") + 1
    local name = string.sub(detail.name, pos)

    if (name == needle) then
      return i
    end
  end
end

return { findItem = findItem }