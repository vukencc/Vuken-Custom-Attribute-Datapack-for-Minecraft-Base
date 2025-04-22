execute as @a if score @s shared_active_cd matches 1.. run scoreboard players remove @s shared_active_cd 1
execute as @a at @s if score @s shared_active_cd matches 1 run title @s actionbar {text:"Active skill is ready!",color:"aqua",bold:true,underlined:true}

execute as @e[type=item,tag=flameborn] at @s unless block ~ ~-0.5 ~ #minecraft:passable run function center_calculation:item_spe/active/flameborn_active
execute if entity @e[type=marker,tag=flameborn_delay] as @e[type=marker,tag=flameborn_delay] at @s run function center_calculation:item_spe/active/delay_effects/flameborn

execute as @e[type=armor_stand,tag=shattered_branch] at @s unless block ~ ~-0.5 ~ #minecraft:passable run function center_calculation:item_spe/active/active_trig/shattered_branch_active
execute as @e[tag=shattered_branch_delay] run particle soul ~ ~ ~ 0.3 0.1 0.3 0.05 1 normal
execute as @e[tag=shattered_branch_delay] at @s as @n[type=!#minecraft:bypass,distance=..1.5,nbt=!{NoAI:1b}] run function center_calculation:item_spe/active/delay_effects/shattered_branch

execute if entity @e[type=!#minecraft:bypass,tag=shattered_branch_aspect] run function center_calculation:item_spe/active/continue/shattered_branch_dot

scoreboard players add @e[tag=timing_limited] timing_limited 1
kill @e[tag=timing_limited_160,scores={timing_limited=160..}] 
kill @e[tag=timing_limited_240,scores={timing_limited=240..}] 

execute as @a if score @s execute_active matches 22 at @s run function center_calculation:item_spe/active/delay_effects/execute_attack
execute as @a if score @s execute_active matches 15 at @s run function center_calculation:item_spe/active/delay_effects/execute_attack
execute as @a if score @s execute_active matches 8 at @s run function center_calculation:item_spe/active/delay_effects/execute_attack
scoreboard players remove @a[scores={execute_active=1..}] execute_active 1
