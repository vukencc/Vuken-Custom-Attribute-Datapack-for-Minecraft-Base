### Shared Boss Requirements:

execute as @a[scores={boss_deaths=1..}] at @s run function map_only:boss/paranoia/system/single_defeated
execute unless entity @p[scores={boss_deaths=0}] if entity @p[scores={boss_deaths=1..}] run function map_only:boss/paranoia/system/players_defeated
scoreboard players set @a gamemode.scb 5
execute if score $s_vir boss_hp matches ..0 run function map_only:boss/paranoia/system/victory

### Boss Skill Circle:

scoreboard players add $s_vir boss_timing 1
execute if score $s_vir boss_timing matches 2550.. run scoreboard players set $s_vir boss_timing 0

### Special Boss Requirements:

execute as @a at @s if block ~ ~ ~ water run tp @s -637.01 5.00 249.011