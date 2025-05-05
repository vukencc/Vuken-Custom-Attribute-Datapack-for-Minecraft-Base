tp @s ^ ^ ^0.5
damage @p[distance=..1] 28 magic
execute positioned ~ ~1 ~ run damage @p[distance=..1] 28 magic
particle end_rod ~ ~1.3 ~ 0 0 0 2 0 normal
execute if score @s enemy_skill matches 20.. run kill @s