function onTextEvent(messageData)
	
	if messageData.messageType == 31 then
		if string.find(messageData.text, "Loot of") then

				monster = Creature.new(Player.getId())
				monsterPos = creatureGetPosition(monster.cid)
				gameLootCorpse(monsterPos.x - 1, monsterPos.y + 1, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x, monsterPos.y + 1, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x + 1, monsterPos.y + 1, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x - 1, monsterPos.y, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x, monsterPos.y, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x + 1, monsterPos.y, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x - 1, monsterPos.y - 1, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x, monsterPos.y - 1, monsterPos.z)
				wait(10)
				gameLootCorpse(monsterPos.x + 1, monsterPos.y, monsterPos.z)
		
		end
	end
	
end

Game.registerEvent(Game.Events.TEXT_MESSAGE, onTextEvent)
