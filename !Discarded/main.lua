local mod = RegisterMod("Discarded", 1)

local HOLY_CARD = Isaac.GetCardIdByName("Holy Card?")


function mod:OnUseCard(card, player, useFlags)

    local AddMaxHearts = 2

    if useFlags & UseFlag.USE_MIMIC == UseFlag.USE_MIMIC then
        AddMaxHearts = 2
    end

    player:AddMaxHearts(AddMaxHearts)

end


mod:AddCallback(ModCallbacks.MC_USE_CARD, mod.OnUseCard, HOLY_CARD)