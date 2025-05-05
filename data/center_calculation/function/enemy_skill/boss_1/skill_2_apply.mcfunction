execute as @e[tag=b1_s2_z-_move] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=b1_s2_x-_move] at @s run tp @s ^ ^ ^0.4
execute if score @p repeat_10_timing matches 3 as @e[tag=b1_s2_move] at @s run particle explosion ~ ~-4 ~ 1 1 1 0.1 2 normal
execute if score @p repeat_10_timing matches 6 as @e[tag=b1_s2_move] at @s run particle explosion ~ ~-4 ~ 1 1 1 0.1 2 normal
execute if score @p repeat_10_timing matches 9 as @e[tag=b1_s2_move] at @s run particle explosion ~ ~-4 ~ 1 1 1 0.1 2 normal
execute if score @p repeat_10_timing matches 3 as @a at @s run playsound entity.generic.explode hostile @s ~ ~ ~
execute if score @p repeat_10_timing matches 8 as @a at @s run playsound entity.generic.explode hostile @s ~ ~ ~
execute as @e[tag=b1_s2_move] at @s positioned ~ ~-4 ~ as @a[distance=..2.5] run damage @s 13 magic