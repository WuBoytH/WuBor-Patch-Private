-- lc file decompiled with special DSLuaDecompiler build by katalash, jam1garner, & Coolsonickirby

-- Decimal      -> Hexadecimal   -> Label
-- 23356055229  -> 0x0570211EBD  -> trans
-- 92925133491  -> 0x15A2C502B3  -> collision_attr_normal
-- 82430076406  -> 0x13313725F6  -> collision_attr_aura
-- 72656470004  -> 0x10EAA9BFF4  -> rbkind_explosion

game_Throw = function ()
    if sv_animcmd.is_excute() then
        local f1_local0, f1_local1, f1_local2 = nil
        sv_animcmd.ATTACK(0, 0, 0x0570211EBD, 2, 60, 100, 44, 0, 1.600000023841858, 0, 0, 0, f1_local0, f1_local1, f1_local2, 1, 0, ATTACK_SETOFF_KIND_ON, ATTACK_LR_CHECK_F, true, 0, 0, 0, true, false, false, false, false, COLLISION_SITUATION_MASK_GA, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x15A2C502B3, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_KICK, ATTACK_REGION_OBJECT)
        AttackModule.enable_safe_pos()
    end
    return 
end

game_Born = function ()
    if sv_animcmd.is_excute() then
        sv_animcmd.ATTACK(0, 0, 0x0570211EBD, 1.399999976158142, 130, 100, 30, 0, 6, 0, 3.5, -5, 0, 3.5, 5, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_POS, false, 0, 0, 3, true, true, false, false, false, COLLISION_SITUATION_MASK_GA, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
    end
    sv_animcmd.frame(3)
    if sv_animcmd.is_excute() then
        local f2_local0, f2_local1, f2_local2 = nil
        sv_animcmd.ATTACK(0, 0, 0x0570211EBD, 1, 366, 100, 30, 0, 10, 0, 7, 0, f2_local0, f2_local1, f2_local2, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_POS, true, 0, 0, 3, true, true, false, false, false, COLLISION_SITUATION_MASK_GA, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
    end
    sv_animcmd.frame(5)
    if sv_animcmd.is_excute() then
        sv_animcmd.ATTACK(0, 0, 0x0570211EBD, 1.2, 366, 20, 10, 60, 7, 0, 9, 0, 0, 14, 0, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, true, 0, 0, 9, true, true, false, false, false, COLLISION_SITUATION_MASK_G, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        sv_animcmd.ATTACK(1, 0, 0x0570211EBD, 1.2, 366, 20, 10, 60, 7, 0, 9, 0, 0, 14, 0, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, true, 0, 0, 9, true, true, false, false, false, COLLISION_SITUATION_MASK_A, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        local f2_local0, f2_local1, f2_local2 = nil
        sv_animcmd.ATTACK(2, 0, 0x0570211EBD, 1.2, 366, 33, 10, 60, 8, 0, 5, 0, f2_local0, f2_local1, f2_local2, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, true, 0, 0, 9, true, true, false, false, false, COLLISION_SITUATION_MASK_G, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        sv_animcmd.ATTACK(3, 0, 0x0570211EBD, 1.2, 366, 33, 10, 60, 8, 0, 5, 0, f2_local0, f2_local1, f2_local2, 1, 0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, true, 0, 0, 9, true, true, false, false, false, COLLISION_SITUATION_MASK_A, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        ControlModule.set_rumble(0x10EAA9BFF4, 0, false)
    end
    sv_animcmd.frame(47)
    if sv_animcmd.is_excute() then
        AttackModule.clear_all()
        sv_animcmd.ATTACK(0, 0, 0x0570211EBD, 2, 80, 30, 0, 80, 8, 0, 9, 0, 0, 14, 0, 1.2000000476837158, 1, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, false, 0, 0, 0, true, true, false, false, false, COLLISION_SITUATION_MASK_GA, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        local f2_local0, f2_local1, f2_local2 = nil
        sv_animcmd.ATTACK(1, 0, 0x0570211EBD, 2, 80, 30, 0, 80, 9, 0, 5, 0, f2_local0, f2_local1, f2_local2, 1.2000000476837158, 1, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_F, false, 0, 0, 0, true, true, false, false, false, COLLISION_SITUATION_MASK_GA, COLLISION_CATEGORY_MASK_ALL, COLLISION_PART_MASK_ALL, false, 0x13313725F6, ATTACK_SOUND_LEVEL_S, COLLISION_SOUND_ATTR_FIRE, ATTACK_REGION_BOMB)
        ControlModule.set_rumble(0x10EAA9BFF4, 0, false)
    end
    return 
end

return