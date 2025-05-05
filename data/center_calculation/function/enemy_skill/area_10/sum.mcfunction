execute as @e[tag=a10_e1,scores={enemy_skill=1..}] at @s run function center_calculation:enemy_skill/area_10/lance
execute as @e[tag=a10_e1_lance] at @s run function center_calculation:enemy_skill/area_10/lance_move
execute as @e[tag=a10_e1_lance] at @s run function center_calculation:enemy_skill/area_10/lance_move

execute as @e[tag=a10_e2,nbt={HurtTime:1s}] at @s run function center_calculation:enemy_skill/area_10/leap_to_player

execute as @a[nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/area_10/take_damage