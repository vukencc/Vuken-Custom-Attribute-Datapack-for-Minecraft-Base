execute if entity @n[tag=a6_e2,distance=..2.5] run effect give @s slowness 2 2 true
playsound block.glass.break hostile @s ~ ~ ~

execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run tag @s add a6_hurt_by_elite_1
effect clear @s[tag=a6_hurt_by_elite_1] levitation
damage @s[tag=a6_hurt_by_elite_1] 16 magic
effect give @s[tag=a6_hurt_by_elite_1] slowness 1 4 true
playsound entity.elder_guardian.curse hostile @s[tag=a6_hurt_by_elite_1] ~ ~ ~
tag @s remove a6_hurt_by_elite_1