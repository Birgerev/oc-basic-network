local cmp = require("component")
local modem = cmp.modem
local args = {...}
local port = 123

--Add all args to a full string
local message = ""
for index, arg in ipairs(args) do
  -- Add a space between every word
  if index ~= 1 then
    message = message .. " "  
  end

  -- Append argument to message string
  message = message .. arg
end

modem.broadcast(port, message)
print("sent")