particle flame ~ ~0.3 ~ 0.1 0.1 0.1 0.001 3 normal
particle lava ~ ~0.3 ~ 0.1 0.1 0.1 0.001 1 normal
tp @s ^ ^ ^0.3 facing entity @p
execute if entity @s[nbt={HurtTime:9s}] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute if entity @s[nbt={HurtTime:9s}] run playsound entity.generic.explode hostile @a ~ ~ ~
execute if entity @s[nbt={HurtTime:9s}] run kill @s
execute if entity @p[distance=..0.7] run damage @p 12 magic
execute if entity @p[distance=..0.7] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0 1 normal
execute if entity @p[distance=..0.7] run playsound entity.generic.explode hostile @a ~ ~ ~
execute if entity @p[distance=..0.7] run kill @s