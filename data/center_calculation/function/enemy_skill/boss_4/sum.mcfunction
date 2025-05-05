execute unless entity @e[tag=boss_4] run function center_calculation:enemy_skill/boss_4/victory
execute unless entity @p[scores={boss.temp_deaths=0}] if entity @e[tag=boss_4] run function center_calculation:enemy_skill/boss_4/failed
execute store result bossbar boss_4 value run data get entity @n[tag=boss_4] Health
scoreboard players set @a gamemode.scb 10
scoreboard players add @n[tag=boss_4] boss.skill_timing 1
scoreboard players set @n[tag=boss_4,scores={boss.skill_timing=1400..}] boss.skill_timing 0

execute if score @n[tag=boss_4] boss.skill_timing matches 160 run function center_calculation:enemy_skill/boss_4/skill_1_p1
execute if score @n[tag=boss_4] boss.skill_timing matches 190 run function center_calculation:enemy_skill/boss_4/skill_1_p1
execute if score @n[tag=boss_4] boss.skill_timing matches 220 run function center_calculation:enemy_skill/boss_4/skill_1_p1

execute as @e[tag=b4_s1_marker,scores={enemy_skill=1..}] at @s run function center_calculation:enemy_skill/boss_4/skill_1_apply

execute if score @n[tag=boss_4] boss.skill_timing matches 400 run function center_calculation:enemy_skill/boss_4/skill_2_p1
execute as @e[tag=b4_s2_dummy,nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/boss_4/skill_2_apply
execute unless entity @e[tag=b4_s2_dummy_true] run kill @e[tag=b4_s2_dummy]
execute unless entity @e[tag=b4_s2_dummy_true] if entity @n[tag=boss_4,nbt={Invulnerable:1b}] run data merge entity @n[tag=boss_4] {Invulnerable:0b}
execute if entity @e[tag=b4_s2_dummy_true] if entity @n[tag=boss_4,nbt={Invulnerable:0b}] run data merge entity @n[tag=boss_4] {Invulnerable:1b}

execute if score @n[tag=boss_4] boss.skill_timing matches 560 run function center_calculation:enemy_skill/boss_4/skill_3_p1

execute if score @n[tag=boss_4] boss.skill_timing matches 700 run function center_calculation:enemy_skill/boss_4/skill_4_p1

execute if score @n[tag=boss_4] boss.skill_timing matches 840 run function center_calculation:enemy_skill/boss_4/skill_3_p1

execute if score @n[tag=boss_4] boss.skill_timing matches 1000 run function center_calculation:enemy_skill/boss_4/skill_5_p1

execute as @e[tag=b4_s5_enemy] at @s run tp @s ^ ^ ^0.15 facing entity @p
execute as @e[tag=b4_s5_enemy] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=b4_s5_enemy] at @s if entity @p[distance=..1.25] run damage @p 26 magic
execute as @e[tag=b4_s5_enemy] at @s if entity @p[distance=..1.25] run kill @s

execute if score @n[tag=boss_4] boss.skill_timing matches 1160 run function center_calculation:enemy_skill/boss_4/skill_1_p1_ex
execute if score @n[tag=boss_4] boss.skill_timing matches 1190 run function center_calculation:enemy_skill/boss_4/skill_1_p1_ex
execute if score @n[tag=boss_4] boss.skill_timing matches 1220 run function center_calculation:enemy_skill/boss_4/skill_1_p1_ex

execute if score @n[tag=boss_4] boss.skill_timing matches 1380 run function center_calculation:enemy_skill/boss_4/skill_4_p1_ex