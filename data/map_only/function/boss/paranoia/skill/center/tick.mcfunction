execute positioned ~ ~1 ~ rotated as @n[type=marker,tag=player_marker_center] run function map_only:boss/paranoia/skill/center/particle

execute if score $s_vir boss_timing matches 120 at @s run function map_only:boss/paranoia/skill/s1/pre
execute if score $s_vir boss_timing matches 120..140 if score $s_vir repeat_10_timing matches 3 run function map_only:boss/paranoia/skill/s1/pre_ensure
execute if score $s_vir boss_timing matches 120..140 if score $s_vir repeat_10_timing matches 7 run function map_only:boss/paranoia/skill/s1/pre_ensure
execute if score $s_vir boss_timing matches 140 as @a at @s run playsound entity.wither.shoot hostile @s ~ ~ ~ 1 2 1
execute if score $s_vir boss_timing matches 140..180 run function map_only:boss/paranoia/skill/s1/stack_in_tick
execute if score $s_vir boss_timing matches 180 run function map_only:boss/paranoia/skill/s1/end

execute if score $s_vir boss_timing matches 200 at @s run function map_only:boss/paranoia/skill/s1/pre
execute if score $s_vir boss_timing matches 220..240 if score $s_vir repeat_10_timing matches 3 run function map_only:boss/paranoia/skill/s1/pre_ensure
execute if score $s_vir boss_timing matches 220..240 if score $s_vir repeat_10_timing matches 7 run function map_only:boss/paranoia/skill/s1/pre_ensure

execute if score $s_vir boss_timing matches 240 as @a at @s run playsound entity.wither.shoot hostile @s ~ ~ ~ 1 2 1
execute if score $s_vir boss_timing matches 240..280 run function map_only:boss/paranoia/skill/s1/stack_in_tick
execute if score $s_vir boss_timing matches 300 run function map_only:boss/paranoia/skill/s1/end

execute if score $s_vir boss_timing matches 320 at @s run function map_only:boss/paranoia/skill/s1/pre
execute if score $s_vir boss_timing matches 320..340 if score $s_vir repeat_10_timing matches 3 run function map_only:boss/paranoia/skill/s1/pre_ensure
execute if score $s_vir boss_timing matches 320..340 if score $s_vir repeat_10_timing matches 7 run function map_only:boss/paranoia/skill/s1/pre_ensure

execute if score $s_vir boss_timing matches 340 as @a at @s run playsound entity.wither.shoot hostile @s ~ ~ ~ 1 2 1
execute if score $s_vir boss_timing matches 340..380 run function map_only:boss/paranoia/skill/s1/stack_in_tick
execute if score $s_vir boss_timing matches 380 run function map_only:boss/paranoia/skill/s1/end

execute if score $s_vir boss_timing matches 520 run function map_only:boss/paranoia/skill/s2/summon
execute if score $s_vir boss_timing matches 620 as @e[type=marker,tag=Boss_1_s2_mark] at @s run function map_only:boss/paranoia/skill/s2/summon
execute if score $s_vir boss_timing matches 520..720 as @e[type=marker,tag=Boss_1_s2_mark] at @s run function map_only:boss/paranoia/skill/s2/move_tick
execute if score $s_vir boss_timing matches 720 run function map_only:boss/paranoia/skill/s2/end

execute if score $s_vir boss_timing matches 840 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e1/summon_1
execute if score $s_vir boss_timing matches 900 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e1/summon_2
execute if score $s_vir boss_timing matches 960 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e1/summon_3
execute if score $s_vir boss_timing matches 1020 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e1/summon_4
execute store result score @a stdTemp1 if entity @e[type=zombie_villager,tag=Boss_1_s3_1]
effect give @a[scores={stdTemp1=2..}] unluck 1 0 true
effect give @a[scores={stdTemp1=4..}] unluck 1 1 true

execute if score $s_vir boss_timing matches 1140 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e2/summon_1
execute if score $s_vir boss_timing matches 1200 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e2/summon_2
execute if score $s_vir boss_timing matches 1260 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e2/summon_3
execute if score $s_vir boss_timing matches 1320 positioned -637.00 5.00 249.00 run function map_only:boss/paranoia/skill/s3/e2/summon_4
execute store result score @a stdTemp1 if entity @e[type=skeleton,tag=Boss_1_s3_2]
effect give @a[scores={stdTemp1=2..}] weakness 1 0 true
effect give @a[scores={stdTemp1=4..}] weakness 1 1 true

execute if score $s_vir boss_timing matches 1450 run tellraw @a {translate:boss.paranoia.s4.lore,color:aqua,bold:true}
execute if score $s_vir boss_timing matches 1500 run function map_only:boss/paranoia/skill/s4/random
execute if score $s_vir boss_timing matches 1630 run function map_only:boss/paranoia/skill/s4/random
execute if score $s_vir boss_timing matches 1760 run function map_only:boss/paranoia/skill/s4/random
execute if score $s_vir boss_timing matches 1890 run function map_only:boss/paranoia/skill/s4/random
execute if score $s_vir boss_timing matches 2030 run function map_only:boss/paranoia/skill/s4/execute

execute if score $s_vir boss_timing matches 2170 run title @a subtitle {translate:boss.paranoia.s5.lore,color:aqua,bold:true}
execute if score $s_vir boss_timing matches 2170 run title @a title {text:" ",color:aqua,bold:true}
execute if score $s_vir boss_timing matches 2250..2450 as @a at @s run function map_only:boss/paranoia/skill/s5/in_detect
execute if score $s_vir boss_timing matches 2250..2450 if score $s_vir repeat_25_timing matches 10 run function map_only:boss/paranoia/skill/s5/summon
execute if score $s_vir boss_timing matches 2450 run title @a subtitle {translate:boss.paranoia.s5.lore.end,color:aqua,bold:true}
execute if score $s_vir boss_timing matches 2450 run title @a title {text:" ",color:aqua,bold:true}

execute as @n[type=skeleton,tag=BossPas] at @s if block ~ ~ ~ water run tp @s -637.01 5.00 249.011