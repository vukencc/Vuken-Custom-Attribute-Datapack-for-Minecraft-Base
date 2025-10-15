function center_calculation:particle/ench/starlit
playsound block.grass.break hostile @a ~ ~ ~ 10 1.3 1
$execute as @e[type=!#bypass,distance=..4] run damage @s $(starlit_damage) center_calculation:custom_magic by @p[nbt={UUID:$(UUID)}] 