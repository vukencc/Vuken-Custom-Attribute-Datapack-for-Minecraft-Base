$execute if score @p melee_quake matches 1.. as @p at @s positioned ^ ^ ^2.3 as @e[type=!#minecraft:bypass,distance=..3,nbt={HurtTime:0s}] run scoreboard players add @s enemy.Taken.Melee $(quake)
execute if score @p melee_quake matches 1.. as @p at @s positioned ^ ^ ^2.3 run particle explosion ~ ~ ~ 1.3 1.3 1.3 0.2 5 normal
execute if score @p melee_quake matches 1.. as @p at @s run playsound block.stone.break hostile @p ~ ~ ~

tag @p add tempApply
execute if score @p melee_quake matches 1.. as @p at @s positioned ^ ^ ^2.3 as @e[type=!#minecraft:bypass,distance=..3,nbt={HurtTime:0s}] run function core:damage/melee/direct_apply
tag @p remove tempApply