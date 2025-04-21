function center_calculation:particle/skill/flame_static_cyl
particle small_flame ~ ~0.1 ~ 2.2 0 2.2 0.03 6 normal
execute as @e[type=!#bypass,distance=..6,nbt={Fire:0s}] run data merge entity @s {Fire:80s}
effect give @e[type=!#bypass,distance=..6] slowness 1 1 true
execute if score @s timing_limited matches 159 as @e[type=!#bypass,distance=..6] run data merge entity @s {Fire:80s}
execute if score @s timing_limited matches 159 at @s run playsound entity.generic.extinguish_fire hostile @a ~ ~ ~