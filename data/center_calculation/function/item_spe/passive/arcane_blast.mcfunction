execute at @s as @e[type=!#bypass,distance=..4.25] run damage @s 12 starve
execute at @s positioned ~ ~-0.1 ~ run particle explosion ~ ~ ~ 2 0 2 0.1 20 normal
execute at @s run playsound entity.ender_dragon.flap hostile @s ~ ~ ~