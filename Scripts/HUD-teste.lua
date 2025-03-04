local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;

local function v7(v25, v26)
    local v27 = {};
    for v65 = 1, #v25 do
        v6(v27, v0(v4(v1(v2(v25, v65, v65 + 1)), v1(v2(v26, 1 + (v65 % #v26), 1 + (v65 % #v26) + 1))) % 256));
    end
    return v5(v27);
end

local function v8(v28, ...)
    if v28 then
        v28(...);
    else
        print("A função não foi fornecida.");
    end
end

local v9 = 1676 - (1373 + 263);
local v10 = 1050 - (451 + 549);

local function v11(v29, v30, v31)
    local v32 = 0 + 0;
    local v33;
    while true do
        if (1 == v32) then
            v29:setColor((v33 and (0 - 0)) or 255, (v33 and 255) or (428 - 173),
                (v33 and (1384 - (746 + 638))) or (96 + 159));
            break
        end
        if (v32 == 0) then
            local v83 = 0 - 0;
            local v84;
            while true do
                if (v83 == (341 - (218 + 123))) then
                    v84 = 1581 - (1535 + 46);
                    while true do
                        if (v84 == (0 + 0)) then
                            v33 = v31();
                            v29:setText(v30);
                            v84 = 1 + 0;
                        end
                        if (v84 == (561 - (306 + 254))) then
                            v32 = 1 + 0;
                            break
                        end
                    end
                    break
                end
            end
        end
    end
end

local function v12(v34)
    local v35 = 0;
    local v36;
    while true do
        if (v35 == (0 - 0)) then
            v36 = 0;
            while true do
                if (v36 == (1467 - (899 + 568))) then
                    Engine.autoSSAEnable(v34);
                    Engine.autoMightRingEnable(v34);
                    break
                end
            end
            break
        end
    end
end

local function v13(v37)
    Engine.runeMaxEnable(v37);
end

local v14 = {3155, 3794 - (268 + 335), 3451 - (60 + 230), 3774 - (426 + 146), 4631 - (282 + 1174)};

local function v15(v38)
    Engine.setRuneMaxId(v38);
end

function getRuneMaxId()
    return Engine.getRuneMaxId();
end

elements = {{
    [v7("\221\194\217\32\234", "\126\177\163\187\69\134\219\167")] = "",
    [v7("\42\201", "\156\67\173\74\165")] = "MOVE\nHUDS",
    [v7("\32\184\78\17\176\35\121\50\162\71\21", "\38\84\215\41\118\220\70")] = function()
    end,
    [v7("\67\2\35\6\251\111\16\55\28\253", "\158\48\118\66\114")] = function()
        return false;
    end
}, {
    [v7("\167\37\18\51\127", "\155\203\68\112\86\19\197")] = v7("\110\248\23\208\105\86\194",
        "\152\38\189\86\156\32\24\133"),
    [v7("\245\83", "\38\156\55\199")] = 23375,
    [v7("\188\114\123\47\31\113\197\69\189\115\127", "\35\200\29\28\72\115\20\154")] = Engine.enableHealing,
    [v7("\10\171\208\203\136\19\50\12\177\210", "\84\121\223\177\191\237\76")] = Engine.isHealingEnabled
}, {
    [v7("\183\87\203\165\54", "\161\219\54\169\192\90\48\80")] = v7("\125\99\50\2\108\118", "\69\41\34\96"),
    [v7("\181\199", "\75\220\163\183\106\98")] = 1950 + 32135,
    [v7("\22\181\140\48\213\7\133\141\34\215\1", "\185\98\218\235\87")] = Engine.enableTargeting,
    [v7("\216\40\38\242\219\149\205\41\41\229", "\202\171\92\71\134\190")] = Engine.isTargetingEnabled
}, {
    [v7("\37\192\46\141\37", "\232\73\161\76")] = v7("\150\248\101\116\61", "\126\219\185\34\61"),
    [v7("\5\202", "\135\108\174\62\18\30\23\147")] = 4412 - (721 + 530),
    [v7("\162\230\45\204\20\171\12\193\163\231\41", "\167\214\137\74\171\120\206\83")] = Engine.enableMagicShooter,
    [v7("\152\228\51\73\253\152\141\229\60\94", "\199\235\144\82\61\152")] = Engine.isMagicShooterEnabled
}, {
    [v7("\11\23\187\46\11", "\75\103\118\217")] = v7("\225\102\89\49\151\58", "\126\167\52\16\116\217"),
    [v7("\193\42", "\156\168\78\64\224\212\121")] = 7894 - 4734,
    [v7("\19\225\162\201\11\235\154\200\18\224\166", "\174\103\142\197")] = Engine.enableHealFriend,
    [v7("\69\60\94\44\32\97\254\67\38\92", "\152\54\72\63\88\69\62")] = Engine.isHealFriendEnabled
}, {
    [v7("\216\197\236\89\216", "\60\180\164\142")] = v7("\125\111\48\0\23", "\114\56\62\101\73\71\141"),
    [v7("\177\237", "\164\216\137\187")] = 3081,
    [v7("\198\233\54\181\170\251\52\212\243\63\177", "\107\178\134\81\210\198\158")] = Engine.enableEquipment,
    [v7("\43\26\131\210\175\7\8\151\200\169", "\202\88\110\226\166")] = Engine.isEquipmentEnabled
}, {
    [v7("\207\14\128\242\198", "\170\163\111\226\151")] = v7("\37\25\159\29\124", "\73\113\80\210\88\46\87"),
    [v7("\136\40", "\135\225\76\173\114")] = 3606 - (271 + 429),
    [v7("\14\226\191\183\160\184\152\28\248\182\179", "\199\122\141\216\208\204\221")] = Engine.enableTimer,
    [v7("\190\201\17\228\125\201\171\200\30\243", "\150\205\189\112\144\24")] = Engine.isTimerEnabled
}, {
    [v7("\41\133\189\73\8", "\112\69\228\223\44\100\232\113")] = v7("\224\62\41\248\246\81\169\240\58",
        "\230\180\127\103\179\214\28"),
    [v7("\133\1", "\128\236\101\63\38\132\33")] = 9577 - (1408 + 92),
    [v7("\184\166\22\67\186\238\240\170\188\31\71", "\175\204\201\113\36\214\139")] = function(v39)
        local v40 = 1086 - (461 + 625);
        while true do
            if (v40 == (1288 - (993 + 295))) then
                v12(v39);
                if v39 then
                    Client.showMessage(v7("\115\205\59\215\68\106\195\49\217\68\98\194\52\222\8\66",
                        "\100\39\172\85\188"));
                else
                    Client.showMessage(v7("\153\121\183\139\115\128\119\189\133\115\137\113\170\129\49\161\125",
                        "\83\205\24\217\224"));
                end
                break
            end
        end
    end,
    [v7("\245\209\204\41\227\250\203\40\232\198", "\93\134\165\173")] = function()
        return Engine.isAutoSSAEnabled() and Engine.isAutoMightRingEnabled();
    end
}, {
    [v7("\178\243\195\199\54", "\30\222\146\161\162\90\174\210")] = v7("\215\123\94\47\165\99\81\50", "\106\133\46\16"),
    [v7("\81\36", "\32\56\64\19\156\58")] = getRuneMaxId(),
    [v7("\78\199\226\81\86\247\191\92\221\235\85", "\224\58\168\133\54\58\146")] = function(v41)
        v13(v41);
        if v41 then
            Client.showMessage(v7("\107\67\69\248\88\167\191\75\124\88\74\255\121\131", "\107\57\54\43\157\21\230\231"));
        else
            Client.showMessage(v7("\233\158\31\240\148\253\247\155\175\24\230\184\222\195\222",
                "\175\187\235\113\149\217\188"));
        end
    end,
    [v7("\47\187\128\88\230\70\126\41\161\130", "\24\92\207\225\44\131\25")] = function()
        local v42 = 0;
        local v43;
        while true do
            if (v42 == 0) then
                v43 = getRuneMaxId();
                return Engine.isRuneMaxEnabled(v43);
            end
        end
    end
}};

for v44, v45 in ipairs(elements) do
    v45.y = v10 + ((v44 - 1) * v9);
end

local function v16(v47, v48)
    return (v47.x ~= v48.x) or (v47.y ~= v48.y);
end

local function v17(v49, v50, v51)
    v49:setPos(v50, v51);
end

local v18 = {};

local function v19(v52, v53)
    local v54 = v52:getPos();
    for v66, v67 in ipairs(elements) do
        if (v67.hud ~= v52) then
            local v85 = 1171 - (418 + 753);
            while true do
                if (v85 == (0 + 0)) then
                    v17(v67.hud, v54.x, v54.y + (v67.y - elements[1].y));
                    v17(v67.hudText, v54.x, v54.y + (v67.y - elements[1 + 0].y) + 25);
                    break
                end
            end
        end
    end
    if settingsHUD then
        v17(settingsHUD, v54.x + 45, (v54.y + (#elements * v9)) - (12 + 28));
    end
    if (#v18 > (0 + 0)) then
        for v86, v87 in ipairs(v18) do
            v17(v87, v54.x + (574 - (406 + 123)), v54.y + (#elements * v9) + ((v86 - (1770 - (1749 + 20))) * (8 + 22)));
        end
    end
end

local function v20()
    for v68, v69 in ipairs(elements) do
        local v70 = HUD.new(1432 - (1249 + 73), v69.y, v69.id, true);
        local v71 = HUD.new(38 + 67, v69.y + (1170 - (466 + 679)), v69.label, true);
        v71:setFontSize(10);
        v71:setColor(255, 255, 613 - 358);
        if (v69.label == v7("\121\230\150\105\91\80\106\235", "\29\43\179\216\44\123")) then
            local v88 = 0;
            local v89;
            while true do
                if (v88 == (2 - 1)) then
                    v70:setItemId(v89);
                    break
                end
                if (v88 == (1900 - (106 + 1794))) then
                    v89 = getRuneMaxId();
                    v69.id = v89;
                    v88 = 1 + 0;
                end
            end
        end
        local function v72()
            local v81 = 0 + 0;
            local v82;
            while true do
                if (v81 == (2 - 1)) then
                    v11(v71, v69.label, v69.state_func);
                    break
                end
                if (v81 == (0 - 0)) then
                    v82 = v69.state_func and v69.state_func();
                    v8(v69.toggle_func, not v82);
                    v81 = 115 - (4 + 110);
                end
            end
        end
        v70:setCallback(v72);
        v71:setCallback(v72);
        v69.hud = v70;
        v69.hudText = v71;
    end
    local v55 = elements[585 - (57 + 527)].hud;
    v55:setDraggable(true);
    v55:setColor(1462 - (41 + 1386), 294 - (17 + 86), 168 + 79);
    local v56 = v55:getPos();
    Timer.new(v7("\181\216\46\72\177\220\109\100\136\253\109\65\178\207\37", "\44\221\185\64"), function()
        local v75 = 0;
        local v76;
        while true do
            if (v75 == (0 - 0)) then
                v76 = v55:getPos();
                if v16(v76, v56) then
                    v56 = v76;
                    v19(v55, v56);
                end
                break
            end
        end
    end, 100);
end

local v21 = false;

local function v22(v57)
    local v58 = 0 - 0;
    local v59;
    local v60;
    while true do
        if (0 == v58) then
            for v91, v92 in ipairs(v18) do
                v92:destroy();
            end
            v18 = {};
            v58 = 167 - (122 + 44);
        end
        if (v58 == (1 - 0)) then
            local v90 = 0 - 0;
            while true do
                if (v90 == (1 + 0)) then
                    v58 = 1 + 1;
                    break
                end
                if (v90 == (0 - 0)) then
                    v59 = 95 - (30 + 35);
                    v60 = v57:getPos().y + v9;
                    v90 = 1 + 0;
                end
            end
        end
        if (v58 == 2) then
            for v93, v94 in ipairs(v14) do
                local v95 = 0;
                local v96;
                local v97;
                while true do
                    if (v95 == (1258 - (1043 + 214))) then
                        v96:setColor(255, 963 - 708, 1467 - (323 + 889));
                        v97 = nil;
                        v95 = 5 - 3;
                    end
                    if (3 == v95) then
                        table.insert(v18, v96);
                        break
                    end
                    if (v95 == (582 - (361 + 219))) then
                        function v97()
                            v96:setItemId(v94);
                            v15(v94);
                            for v104, v105 in ipairs(v18) do
                                local v106 = 320 - (53 + 267);
                                while true do
                                    if ((0 + 0) == v106) then
                                        v105:destroy();
                                        v21 = false;
                                        break
                                    end
                                end
                            end
                        end
                        v96:setCallback(v97);
                        v95 = 3;
                    end
                    if (v95 == (413 - (15 + 398))) then
                        v96 = HUD.new(v57:getPos().x, v60 + ((v93 - 1) * v59), v94);
                        v96:setFontSize(7.5);
                        v95 = 983 - (18 + 964);
                    end
                end
            end
            break
        end
    end
end

local function v23()
    local v61 = 0 - 0;
    local v62;
    while true do
        if (v61 == (2 + 0)) then
            function v62()
                if v21 then
                    local v101 = 0 + 0;
                    while true do
                        if (v101 == 1) then
                            v21 = false;
                            break
                        end
                        if (v101 == (850 - (20 + 830))) then
                            for v108, v109 in ipairs(v18) do
                                v109:destroy();
                            end
                            v18 = {};
                            v101 = 1;
                        end
                    end
                else
                    local v102 = 0 + 0;
                    while true do
                        if (0 == v102) then
                            v22(settingsHUD);
                            v21 = true;
                            break
                        end
                    end
                end
            end
            settingsHUD:setCallback(v62);
            break
        end
        if (v61 == (127 - (116 + 10))) then
            settingsHUD:setColor(255, 19 + 236, 993 - (542 + 196));
            v62 = nil;
            v61 = 3 - 1;
        end
        if (v61 == (0 + 0)) then
            settingsHUD = HUD.new(77 + 73, v10 + 3 + ((#elements - (1 + 0)) * v9), "\xE2\x9A\x99\xEF\xB8\x8F");
            settingsHUD:setFontSize(7.5);
            v61 = 1;
        end
    end
end

v20();
v23();

local function v24()
    for v77, v78 in ipairs(elements) do
        local v79 = 0;
        local v80;
        while true do
            if (v79 == (0 - 0)) then
                v80 = v78.state_func and v78.state_func();
                v11(v78.hudText, v78.label, v78.state_func);
                break
            end
        end
    end
end

Timer.new(v7("\2\239\77\92\120\76\225\93\81\112\21\238\71\81\96\76\244\92\94\103\4", "\19\97\135\40\63"), function()
    local v63 = 0 - 0;
    local v64;
    while true do
        if (v63 == (1552 - (1126 + 425))) then
            for v98, v99 in ipairs(elements) do
                if (v99.label == v7("\156\105\29\30\111\28\143\100", "\81\206\60\83\91\79")) then
                    local v103 = 405 - (118 + 287);
                    while true do
                        if ((0 - 0) == v103) then
                            v99.id = v64;
                            v99.hud:setItemId(v64);
                            break
                        end
                    end
                end
            end
            break
        end
        if (v63 == (1121 - (118 + 1003))) then
            v24();
            v64 = getRuneMaxId();
            v63 = 2 - 1;
        end
    end
end, 100);
