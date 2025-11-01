execute store result score @s player.Weakness run data get entity @s active_effects.[{id:"minecraft:weakness"}].amplifier -20
scoreboard players remove @s player.Weakness 20
execute at @s run summon marker ~ ~ ~ {data:{weakness:0.0},Tags:["weakness_Apply"]}
execute store result entity @n[type=marker,tag=weakness_Apply] data.weakness double 0.01 run scoreboard players get @s player.Weakness
function core:custom_ench/assistance/weakness_apply with entity @n[type=marker,tag=weakness_Apply] data
kill @n[type=marker,tag=weakness_Apply]