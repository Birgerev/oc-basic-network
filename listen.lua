local cmp = require("component")
local modem = cmp.modem
local event = require("event")

-- Recieve network message
function receive(_, localAddress, remoteAddress, port, distance, message)
  print("received: '" .. message .. "' distance:" .. distance)
end

-- Open port
modem.open(123)
event.listen("modem_message", receive)
print("listening")