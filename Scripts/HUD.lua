

-- HUD ICONS CREATE START

local hudItems = {};

hudItems["draggableHUD"] = HUD.new(50, 0, 3049, true)
hudItems["draggableHUD"]:setDraggable(true)
hudItems["draggableHUD"]:setScale(2)
hudItems["draggableHUD"]:setHorizontalAlignment(Enums.HorizontalAlign.Left)
hudItems["draggableHUD"]:setVerticalAlignment(Enums.VerticalAlign.Top)
local margins = hudItems["draggableHUD"]:getMargins()

local function moveHud()
    margins = hudItems["draggableHUD"]:getMargins()

    for key,hud in pairs(hudItems) do
        if key == "draggableHUD" then
        else
            hud:setPos(margins.x + hud.originalXPositions, margins.y + hud.originalYPositions)
        end
    end
end

hudItems["draggableHUD"]:setCallback(moveHud);
Game.registerEvent(Game.Events.HUD_CLICK, moveHud)
-- HUD ICONS CREATE END

-- DUST COUNTER START

dust = Player.getDusts()
maxDust = Player.getDustsMaximum()
hudItems["myItemHUD"] = HUD.new(100, 50, 37109, false)
hudItems["myItemHUD"].originalXPositions = 50
hudItems["myItemHUD"].originalYPositions = 50
wait(20)
hudItems["myTextHUD"] = HUD.new(margins.x, margins.y, ": " .. dust .. " / " .. maxDust, false)
hudItems["myTextHUD"]:setColor(255, 255, 255)
hudItems["myTextHUD"]:setPos(hudItems["myItemHUD"]:getPos().x + 50, hudItems["myItemHUD"]:getPos().y - 7.5)
hudItems["myTextHUD"].originalXPositions = 100
hudItems["myTextHUD"].originalYPositions = 50 - 7.5

function onTextEvent(messageData)
    if string.find(messageData.text, "Exaltation Forge") then
        dust = Player.getDusts()
		maxDust = Player.getDustsMaximum()
        hudItems["myTextHUD"]:setText(": " .. dust .. " / " .. maxDust)
    end
end

Game.registerEvent(Game.Events.TEXT_MESSAGE, onTextEvent)

-- DUST COUNTER END

-- SELL ITEM START

hudItems["sellItemId"] = HUD.new(100, 75, 3043, true)
hudItems["sellItemId"].originalXPositions = 50
hudItems["sellItemId"].originalYPositions = 75
wait(20)

hudItems["sellItemLabel"] = HUD.new(200, 100, "SELL ITEMS", true)
hudItems["sellItemLabel"]:setColor(255, 255, 613 - 358);
hudItems["sellItemLabel"]:setPos(hudItems["sellItemId"]:getPos().x, hudItems["sellItemId"]:getPos().y + 20)
hudItems["sellItemLabel"].originalXPositions = 50
hudItems["sellItemLabel"].originalYPositions = 95

local sellList = {16122,3029,25737,22194,16121,3026,31442,31437,3038,31438,31441,3041,3039,283,284,3320,16096,8093,8092,3071,14247,3428,10397,10404,
					3036,3032,5892,10386,10388,10384,8043,10387,3006,10438,3030,11454,11658,10405,3037,9058,678,281,3033,3028,6499,24390,25694,24392,
					32773,32774,32769,32770,32771,32583,32772,3065,13990,812,814,32773,3067,16118,3061,8094,3081,3082,3060,30180,815,3055,830,818,816,817,
					827,9302,828,31442,31438,16119,22194,16126,30180,16120,16122,16127,16125,22193,677,3073,3062,3038,821,3281,3554,3342,3326,7386,9657,5893,
                    3058,32227,5930,31678,32698,7407,7413,8084,11447,9654,7383,7404,3010,7432,7418,7452,813,7387,16123,676,675,20198,20199,5895,5925,22053,5880,
                    22052,22051,22054,22057,27462,20201,22055,27463,10317,6902,22056,5897,5896,5902,8094,3049,7454,7451,10389,9058,3344,16163,10306,30005,11465,
                    9635,647,8031,11474,5922,5879,3318,8082,3054,3052,3575,283,14042,13990,6299,826,3098,21175,16096,14040,3029,9057,337,3370,3381,
				} 

local function sellAllItems()
	hudItems["sellItemLabel"]:setColor(255,100,100)
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
        local maxTries = 1
        local itemId = sellList[i]
        local itemCount = Game.getItemCount(itemId) - (inventoryItems[itemId] or 0)
        while itemCount > 0 do
            Npc.sell(itemId, itemCount, true)
            wait(math.max(100, Client.getServerLatency()+200))
            itemCount = Game.getItemCount(itemId) - (inventoryItems[itemId] or 0)
            tries = tries + 1
            if tries > maxTries then
                break
            end
        end
    end
    Client.showMessage('All items sold')
	hudItems["sellItemLabel"]:setColor(255, 255, 613 - 358);
end

hudItems["sellItemId"]:setCallback(sellAllItems);
hudItems["sellItemLabel"]:setCallback(sellAllItems);

-- SELL ITEMS END

-- RESET SCRIPT START 

hudItems["resetScriptId"] = HUD.new(100, 15, 31433, true)
hudItems["resetScriptId"].originalXPositions = 50
hudItems["resetScriptId"].originalYPositions = 15
wait(20)

hudItems["resetScriptLabel"] = HUD.new(100, 25, "RELOAD SCRIPT", true)
hudItems["resetScriptLabel"]:setColor(255, 255, 613 - 358);
hudItems["resetScriptLabel"]:setPos(hudItems["resetScriptId"]:getPos().x, hudItems["resetScriptId"]:getPos().y + 20)
hudItems["resetScriptLabel"].originalXPositions = 50
hudItems["resetScriptLabel"].originalYPositions = 15 + 20

local function reloadScript ()
	Engine.reloadScript("HUD.lua")
end

hudItems["resetScriptId"]:setCallback(reloadScript);
hudItems["resetScriptLabel"]:setCallback(reloadScript);

-- RESET SCRIPT END

-- DEPOSIT GOLD START 

hudItems["depositBanckId"] = HUD.new(100, 115, 31674, true)
hudItems["depositBanckId"].originalXPositions = 50
hudItems["depositBanckId"].originalYPositions = 115
wait(20)

hudItems["depositBanckLabel"] = HUD.new(100, 115, "DEPOSIT BANK", true)
hudItems["depositBanckLabel"]:setColor(255, 255, 613 - 358);
hudItems["depositBanckLabel"]:setPos(hudItems["depositBanckId"]:getPos().x, hudItems["depositBanckId"]:getPos().y + 20)
hudItems["depositBanckLabel"].originalXPositions = 50
hudItems["depositBanckLabel"].originalYPositions = 115 + 20

local function depositAllGold ()
	Game.talk('hi', 1)
    wait(400)
    Game.talk('deposit all', 12)
	wait(400)
	Game.talk('yes', 12)
end

hudItems["depositBanckId"]:setCallback(depositAllGold);
hudItems["depositBanckLabel"]:setCallback(depositAllGold);

-- DEPOSIT GOLD END

-- GET REWARDS START

hudItems["getRewardsId"] = HUD.new(100, 155, 19202, true)
hudItems["getRewardsId"].originalXPositions = 50
hudItems["getRewardsId"].originalYPositions = 155
wait(20)

hudItems["getRewardsLabel"] = HUD.new(100, 155, "Collect Rewards", true)
hudItems["getRewardsLabel"]:setColor(255, 255, 613 - 358);
hudItems["getRewardsLabel"]:setPos(hudItems["getRewardsId"]:getPos().x, hudItems["getRewardsId"]:getPos().y + 20)
hudItems["getRewardsLabel"].originalXPositions = 50
hudItems["getRewardsLabel"].originalYPositions = 155 + 20

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
  end

local function openInvetory()
    local rewards = Container.new(1)
    local rewardsInContainer = rewards:getItems()
    local totalItems = tablelength(rewardsInContainer)
    Client.showMessage(totalItems)
end

local function getRewards()
    hudItems["getRewardsLabel"]:setColor(255, 0, 0);
    local Inventory = Container.new(0)
    local rewards = Container.new(1)

    if rewards == nil then return end

    local rewardsInContainer = rewards:getItems()
    local totalRewards = tablelength(rewardsInContainer)

    for x = 0, totalRewards - 1, 1 do
        Client.showMessage('X: ' .. x)

        local container = rewards:useItem(x, false)
        wait(500)
        if container then
            while rewards:getItems() ~= nil and next(rewards:getItems()) ~= nil do
                Client.showMessage(JSON.encode(rewards:getItems()))
                rewards:moveItemToContainer(0,100,0,19)
                wait(100)
            end
        end
        rewards:moveUp()
        wait(500)
    end
    hudItems["getRewardsLabel"]:setColor(255, 255, 613 - 358);
end

hudItems["getRewardsId"]:setCallback(getRewards);
hudItems["getRewardsLabel"]:setCallback(getRewards);
-- GET REWARS END

-- OPEN BACKPACKS START

hudItems["openBackpacksId"] = HUD.new(100, 205, 16099, true)
hudItems["openBackpacksId"].originalXPositions = 50
hudItems["openBackpacksId"].originalYPositions = 205
wait(20)

hudItems["openBackpacksLabel"] = HUD.new(100, 205, "Open Backpacks", true)
hudItems["openBackpacksLabel"]:setColor(255, 255, 613 - 358);
hudItems["openBackpacksLabel"]:setPos(hudItems["openBackpacksId"]:getPos().x, hudItems["openBackpacksId"]:getPos().y + 20)
hudItems["openBackpacksLabel"].originalXPositions = 50
hudItems["openBackpacksLabel"].originalYPositions = 205 + 20

local backpackList = { 
    lootBackpack = 30197, --festive backpack | lootBackpack
    supplyBackpack = 2867, --red backpack | supplyBackpack
    goldBackpack = 2866, --golden backpack | goldBackpack
    creatureItemsBackpack = 21411, --shopping backpack | creatureItemsBackpack
    valuablesBackpack = 10326, --dragon backpack | valuablesBackpack
    equipmentBackpack = 8860, --brocade backpack | equipmentBackpack
    ringBackpack = 2870, --grey backpack | ringBackpack
    necklaceBackpack = 2865, --green backpack | necklaceBackpack
    ammoBackpack = 16099, --mushroom backpack | ammoBackpack
}

local function openSpecificBackpack(bpId)
    local mainBackpack = Container.new(0)
    local mainBackpackItems = mainBackpack:getItems()
    for key2, value2 in ipairs(mainBackpackItems) do
        wait(50)
        if value2.id == bpId then
            wait(50)
            mainBackpack:useItem(key2 - 1, true)
            wait(50)
            break;
        end
        wait(50)
    end

end

local function openBackpacks()
    hudItems["openBackpacksLabel"]:setColor(255, 0, 0);
    local openContainers = Player.getContainers()

    if openContainers ~= nil then
        Client.showMessage('Closing all backpacks')
        for i = 0, #openContainers do
            local container = Container.new(i)
            container:close()
            wait(50)
        end
    end

    Client.showMessage('Opening backpacks')
    local mainBackpack = Player.getInventorySlot(Enums.InventorySlot.CONST_SLOT_BACKPACK)
    Inventory.useItem(Enums.InventorySlot.CONST_SLOT_BACKPACK)
    wait(100)
    openSpecificBackpack(backpackList.lootBackpack)
    wait(25)
    openSpecificBackpack(backpackList.supplyBackpack)
    wait(25)
    openSpecificBackpack(backpackList.goldBackpack)
    wait(25)
    openSpecificBackpack(backpackList.creatureItemsBackpack)
    wait(25)
    openSpecificBackpack(backpackList.valuablesBackpack)
    wait(25)
    openSpecificBackpack(backpackList.equipmentBackpack)
    wait(25)
    openSpecificBackpack(backpackList.ringBackpack)
    wait(50)
    openSpecificBackpack(backpackList.necklaceBackpack)
    wait(25)
    openSpecificBackpack(backpackList.ammoBackpack)
    wait(25)

    hudItems["openBackpacksLabel"]:setColor(255, 255, 613 - 358);
end

hudItems["openBackpacksId"]:setCallback(openBackpacks);
hudItems["openBackpacksLabel"]:setCallback(openBackpacks);

-- OPEN BACKPACKS END

local mainBackpack = Container.new(0)
    local mainBackpackItems = mainBackpack:getItems()
--Client.showMessage(pairs(mainBackpackItems))
--Game.talkPrivate(JSON.encode(mainBackpackItems), 'Pedreiro Manuel')

--Client.showMessage(JSON.encode(Player.getContainers()))

-- CREATE MODAL START
--
--local function modalButtonClick(buttonId)
--    Client.showMessage("MODAL : " .. buttonId)
--
--    if buttonId == 0 then
--        sellAllItems()
--    elseif buttonId == 1 then
--        depositAllGold()
--    end
--
--end
--
--Game.registerEvent(Game.Events.CUSTOM_MODAL_WINDOW_BUTTON_CLICK, modalButtonClick)
--
--modal = CustomModalWindow.new('HUD', 'hiroshimaBr')
--modal:setCallback(modalButtonClick)
--button1 = modal:addButton('sell items');
--button2 = modal:addButton('deposit bank');
--Client.showMessage(JSON.encode(button2))
--
-- CREATE MODAL END
