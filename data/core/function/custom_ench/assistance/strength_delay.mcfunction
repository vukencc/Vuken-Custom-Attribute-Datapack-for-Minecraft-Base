execute store result score @s player.Strength run data get entity @s active_effects.[{id:"minecraft:strength"}].amplifier 30
scoreboard players add @s player.Strength 30
execute at @s run summon marker ~ ~ ~ {data:{Strength:0.0},Tags:["Strength_Apply"]}
execute store result entity @n[type=marker,tag=Strength_Apply] data.Strength double 0.01 run scoreboard players get @s player.Strength
function core:custom_ench/assistance/strength_apply with entity @n[type=marker,tag=Strength_Apply] data
kill @n[type=marker,tag=Strength_Apply]