execute at @s as @e[nbt=!{NoAI:1b},type=!#bypass,distance=..4.5] run scoreboard players set @s thunder_aspect_timing 60
execute at @s as @e[nbt=!{NoAI:1b},type=!#bypass,distance=..4.5] run data merge entity @s {NoAI:1b}
particle smoke ~ ~0.15 ~ 2.5 0.05 2.5 0.05 35 normal
playsound entity.generic.extinguish_fire hostile @a ~ ~ ~
execute as @e[type=!#bypass,distance=..4.5] run damage @s 16
kill @s