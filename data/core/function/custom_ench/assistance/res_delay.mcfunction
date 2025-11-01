execute store result score @s player.Resistance run data get entity @s active_effects.[{id:"minecraft:luck"}].amplifier -10
scoreboard players remove @s player.Resistance 10
execute store result storage minecraft:s_temp_list a double 0.1 run scoreboard players get @s player.Resistance
function core:custom_ench/assistance/res_apply with storage s_temp_list