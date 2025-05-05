particle explosion ~ ~1 ~ 1.2 1.2 1.2 0.1 2 normal
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~
execute as @a[distance=..3.1] at @s run damage @s 18 magic
kill @s