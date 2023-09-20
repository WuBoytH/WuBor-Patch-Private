-- lc file decompiled with special DSLuaDecompiler build by katalash, jam1garner, & Coolsonickirby

-- Decimal      -> Hexadecimal   -> Label
-- 67446362115  -> 0x0FB41DD003  -> sys_box00_break
-- 13402447818  -> 0x031ED91FCA  -> top
-- 64733502391  -> 0x0F126ADBB7  -> sys_box01_break
-- 80489682924  -> 0x12BD8F17EC  -> sys_barrel02_break
-- 45338411590  -> 0x0A8E614246  -> sys_bomb_a

effect_Born = function ()
    if WorkModule.get_int64(ITEM_INSTANCE_WORK_INT_VARIATION) == ITEM_VARIATION_BOX_WOOD then
        if sv_animcmd.is_excute() then
            sv_animcmd.EFFECT(0x0FB41DD003, 0x031ED91FCA, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 360, 0, false)
        end
    elseif WorkModule.get_int64(ITEM_INSTANCE_WORK_INT_VARIATION) == ITEM_VARIATION_BOX_FUTURE then
        if sv_animcmd.is_excute() then
            sv_animcmd.EFFECT(0x0F126ADBB7, 0x031ED91FCA, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 360, 0, false)
        end
    elseif WorkModule.get_int64(ITEM_INSTANCE_WORK_INT_VARIATION) == ITEM_VARIATION_BOX_PRESENT then
        if sv_animcmd.is_excute() then
            sv_animcmd.EFFECT(0x12BD8F17EC, 0x031ED91FCA, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, false)
        end
    end
    -- if WorkModule.is_flag(ITEM_STATUS_WORK_FLAG_LOT_CREATE_BOMB) and sv_animcmd.is_excute() then
    --     sv_animcmd.EFFECT(0x0A8E614246, 0x031ED91FCA, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, true)
    -- end
    return 
end

return