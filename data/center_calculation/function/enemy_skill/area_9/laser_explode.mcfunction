playsound entity.generic.explode hostile @a ~ ~ ~
execute as @a[distance=..4.5] run damage @s 22 magic
particle explosion ~ ~1 ~ 1.2 1.2 1.2 0.1 10 normal
kill @s