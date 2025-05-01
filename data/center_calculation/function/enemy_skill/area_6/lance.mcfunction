execute if score @s enemy_skill matches 60 run effect give @s glowing 2 0 true
execute if score @s enemy_skill matches 60 run team join blue @s
execute if score @s enemy_skill matches 80 run playsound entity.illusioner.cast_spell hostile @a ~ ~ ~
execute if score @s enemy_skill matches 80 run summon marker ~ ~ ~ {Tags:["enemy_skill","a6_e1_lance"]}
execute if score @s enemy_skill matches 80 as @n[tag=a6_e1_lance] at @s run tp @s ~ ~ ~ facing entity @p
execute if score @s enemy_skill matches 60..80 run particle soul_fire_flame ~ ~1 ~ 0.9 1.1 0.9 0.1 2 normal
execute if score @s enemy_skill matches 170.. run scoreboard players set @s enemy_skill 0