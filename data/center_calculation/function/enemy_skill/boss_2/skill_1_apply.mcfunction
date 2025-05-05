
execute as @n[tag=boss_2] at @s run summon marker ~ ~ ~ {Tags:["b2_s1_xr_","b2_s1_r","damage.single.magic","particle.end_rod.above"],data:{magic_damage:16}}
execute as @n[tag=boss_2] at @s run tp @n[tag=b2_s1_xr] ~ ~ ~ ~ ~
execute as @n[tag=boss_2] at @s run summon marker ~ ~ ~ {Tags:["b2_s1_yr","b2_s1_r","damage.single.magic","particle.end_rod.above"],data:{magic_damage:16}}
execute as @n[tag=boss_2] at @s run tp @n[tag=b2_s1_yr] ~ ~ ~ ~90 ~
scoreboard players set @e[tag=b2_s1_r] insMoveForward.distance 10
execute as @e[tag=b2_s1_r] at @s run function operation:movement/instant_movement/instant_move_forward
execute as @e[tag=b2_s1_r] at @s run rotate @s ~180 ~
scoreboard players set @e[tag=b2_s1_r] insMoveForward.distance 20
execute as @e[tag=b2_s1_r] at @s run function operation:movement/instant_movement/instant_move_forward
kill @e[tag=b2_s1_r]