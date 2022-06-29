--[[
    Script Name    : Spells/Stabby.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:32
    Script Purpose : 
                   : 
--]]

-- Increases Piercing and Ranged of caster by 5.0

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end