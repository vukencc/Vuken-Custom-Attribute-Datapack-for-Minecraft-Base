execute unless entity @e[tag=boss_4] run function center_calculation:enemy_skill/boss_4/victory
execute unless entity @p[scores={boss.temp_deaths=0}] if entity @e[tag=boss_4] run function center_calculation:enemy_skill/boss_4/failed
execute store result bossbar boss_4 value run data get entity @n[tag=boss_4] Health
scoreboard players set @a gamemode.scb 10
scoreboard players add @n[tag=boss_4] boss.skill_timing 1
scoreboard players set @n[tag=boss_4,scores={boss.skill_timing=1400..}] boss.skill_timing 0

