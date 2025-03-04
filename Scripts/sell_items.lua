local sellList = {9657, 7398}
function sellAllItems()
    local inventoryItems = {}
    for i = Enums.InventorySlot.CONST_SLOT_HEAD, Enums.InventorySlot.CONST_SLOT_AMMO do
        local item = Player.getInventorySlot(i)
        if item then
            inventoryItems[item.id] = (inventoryItems[item.id] or 0) + item.count
        end
    end
    Game.talk('hi', 1)
    wait(500)
    Game.talk('trade', 12)
    for i = 1, #sellList do
        local tries = 0
        local maxTries = 4
        local itemId = sellList[i]
        local itemCount = Game.getItemCount(itemId) - (inventoryItems[itemId] or 0)
        while itemCount > 0 do
            Npc.sell(itemId, math.min(100, itemCount), true)
            wait(math.max(500, Client.getServerLatency() + 100))
            itemCount = Game.getItemCount(itemId) - (inventoryItems[itemId] or 0)
            tries = tries + 1
            if tries > maxTries then
                break
            end
        end
    end
    Client.showMessage('All items sold')
end
sellAllItems()
