local cmp = require("component")
local modem = cmp.modem
local event = require("event")

-- Open port
modem.open(123)
local _, _, from, port, _, message = event.pull("modem_message")
print("Got a message from " .. from .. ": " .. tostring(message))