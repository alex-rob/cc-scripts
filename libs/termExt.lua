local function reset()
  term.clear()
  term.setCursorPos(1, 1)
end

local function writeCenter(text)
  local x, y = term.getCursorPos()
  local w, h = term.getSize()
  term.setCursorPos(math.floor((w - #text) / 2) + 1, y)
  term.write(text)
end

return {reset = reset, writeCenter = writeCenter}