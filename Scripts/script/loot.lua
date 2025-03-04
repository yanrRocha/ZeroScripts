while true do
local pos = Map.getCameraPosition()
Game.lootCorpse(pos.x - 1, pos.y + 1, pos.z)
Game.lootCorpse(pos.x, pos.y + 1, pos.z)
Game.lootCorpse(pos.x + 1, pos.y + 1, pos.z)
Game.lootCorpse(pos.x - 1, pos.y - 1, pos.z)
Game.lootCorpse(pos.x, pos.y - 1, pos.z)
Game.lootCorpse(pos.x + 1, pos.y - 1, pos.z)
Game.lootCorpse(pos.x - 1, pos.y, pos.z)
Game.lootCorpse(pos.x + 1, pos.y, pos.z)
wait(2000)
end