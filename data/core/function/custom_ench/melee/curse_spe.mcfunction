execute as @s store result score @s melee_curse run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/curse" 25

execute as @s at @s run scoreboard players operation @e[distance=..8,type=!#minecraft:bypass] enemy.Taken.Melee += @s melee_curse

tag @s add tempApply
execute at @s as @e[type=!#minecraft:bypass,distance=..6] run function core:damage/melee/direct_apply
tag @s remove tempApply

execute as @s at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~
particle witch ~ ~1 ~ 3 0.1 3 0.2 35 normal
advancement revoke @s only core:curse_kill_entity

