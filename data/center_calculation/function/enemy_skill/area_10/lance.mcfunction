execute if score @s enemy_skill matches 60 run effect give @s glowing 2 0 true
execute if score @s enemy_skill matches 60 run team join red @s
execute if score @s enemy_skill matches 80 run playsound block.beacon.deactivate hostile @a ~ ~ ~ 10000
execute if score @s enemy_skill matches 80 run summon marker ~ ~ ~ {Tags:["enemy_skill","a10_e1_lance"]}
execute if score @s enemy_skill matches 80 at @s run tp @n[tag=a10_e1_lance] ~ ~ ~ ~ ~
execute if score @s enemy_skill matches 60..80 run particle soul_fire_flame ~ ~1 ~ 0.9 1.1 0.9 0.1 2 normal
execute if score @s enemy_skill matches 160.. run scoreboard players set @s enemy_skill 0