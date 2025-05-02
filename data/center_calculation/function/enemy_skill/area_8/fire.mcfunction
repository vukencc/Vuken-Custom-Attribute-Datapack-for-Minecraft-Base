execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run tag @s add a6_hurt_by_elite_1
effect clear @s[tag=a6_hurt_by_elite_1] levitation
damage @s[tag=a6_hurt_by_elite_1] 16 magic
execute at @s[tag=a6_hurt_by_elite_1] run fill ~2 ~ ~-1 ~2 ~ ~1 fire replace air
execute at @s[tag=a6_hurt_by_elite_1] run fill ~-2 ~ ~-1 ~-2 ~ ~1 fire replace air
execute at @s[tag=a6_hurt_by_elite_1] run fill ~1 ~ ~2 ~-1 ~ ~2 fire replace air
execute at @s[tag=a6_hurt_by_elite_1] run fill ~1 ~ ~-2 ~-1 ~ ~-2 fire replace air
playsound block.lava.extinguish hostile @s[tag=a6_hurt_by_elite_1] ~ ~ ~
tag @s remove a6_hurt_by_elite_1