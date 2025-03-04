luasql = require "luasql.mysql"

env = luasql.mysql()
con = assert (env:connect("zerobot","yanrocha","489562"))
cur = assert (con:execute("SHOW TABLES"))

row = cur:fetch ({}, "a")

for x,y in pairs(row) do
   -- print(string.format("Name: " .. y))
    Client.showMessage(string.format("Name: " .. y))
end