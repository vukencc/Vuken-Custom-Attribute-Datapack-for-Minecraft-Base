execute positioned ^ ^ ^2.3 run particle explosion ~ ~ ~ 0.6 0.3 0.6 1 4 normal
execute positioned ^ ^ ^2.3 run particle cloud ~ ~ ~ 0.9 0.1 0.9 0.6 35 normal
playsound block.stone.break hostile @p ~ ~ ~ 3 0.8 0.7
playsound block.stone.break hostile @p ~ ~ ~ 3 0.8 0.7
playsound block.stone.break hostile @p ~ ~ ~ 3 0.8 0.7
playsound block.stone.break hostile @p ~ ~ ~ 3 0.8 0.7
$execute positioned ^ ^ ^2.3 as @e[type=!#minecraft:bypass,distance=..3,nbt={HurtTime:0s}] run scoreboard players add @s enemy.Taken.Melee $(quake)

tag @p add tempApply
execute positioned ^ ^ ^2.3 as @e[type=!#minecraft:bypass,distance=..3,nbt={HurtTime:0s}] run function core:damage/melee/direct_apply
tag @p remove tempApply