particle scrape ~ ~1 ~ 0 0 0 2 0 normal
particle witch ~ ~1 ~ 0 0 0 2 0 normal
damage @p[distance=..1,nbt={HurtTime:0s}] 28 magic
execute if score @s enemy_skill matches 101.. run kill @s
tp @s ^ ^ ^0.15