function core:particle/ench/starlit
playsound block.grass.break hostile @p ~ ~ ~ 1000 1.3 1
$execute as @e[type=!#bypass,distance=..4] run damage @s $(starlit_damage) core:custom_ranged by @p[tag=stdTemp1]