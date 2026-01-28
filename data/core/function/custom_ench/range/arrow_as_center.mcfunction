function core:custom_ench/range/basic_damage with entity @s data
execute if entity @s[tag=starlit_as] run function core:custom_ench/range/starlit/effect with entity @s data
function operation:event/player/arrow_hurt_entity/trigger