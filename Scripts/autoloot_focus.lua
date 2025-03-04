function onTextEvent(messageData)
	
	if messageData.messageType == 31 then
		if string.find(messageData.text, "Loot of") then

			Client.sendHotkey(39, 0)
		
		end
	end
	
end

Game.registerEvent(Game.Events.TEXT_MESSAGE, onTextEvent)
