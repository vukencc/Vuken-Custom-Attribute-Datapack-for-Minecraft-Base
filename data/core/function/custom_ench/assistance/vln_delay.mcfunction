execute store result score @s player.Vulnerable run data get entity @s active_effects.[{id:"minecraft:unluck"}].amplifier 10
scoreboard players add @s player.Vulnerable 10
execute store result storage minecraft:s_temp_list a double 0.1 run scoreboard players get @s player.Vulnerable
function core:custom_ench/assistance/vln_apply with storage s_temp_list