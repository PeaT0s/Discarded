local mod = RegisterMod("Discarded", 1)

local HOLY_CARD = Isaac.GetCardIdByName("Holy Card?")


function mod:OnUseHolyCard(card, player, useFlags)

    local AddMaxHearts = 2

    if useFlags & UseFlag.USE_MIMIC == UseFlag.USE_MIMIC then
        AddMaxHearts = 2
    end

    player:AddMaxHearts(AddMaxHearts)


end

mod:AddCallback(ModCallbacks.MC_USE_CARD, mod.OnUseHolyCard, HOLY_CARD)

local JOKER_CARD = Isaac.GetCardIdByName("Joker?")

function mod:OnUseJokerCard(card, player, useFlags)
    
        player:AnimateTeleport(true)
        Game():StartRoomTransition(GridRooms.ROOM_ERROR_IDX,Direction.NO_DIRECTION,RoomTransitionAnim.TELEPORT,player)

end


mod:AddCallback(ModCallbacks.MC_USE_CARD, mod.OnUseJokerCard, JOKER_CARD)