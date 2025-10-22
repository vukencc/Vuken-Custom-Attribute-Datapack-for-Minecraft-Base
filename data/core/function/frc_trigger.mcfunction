function core:item_spe/passive_force
function core:item_spe/active_force
function core:enemy_skill/force_center
scoreboard players add @e[tag=timing_limited] timing_limited 1
scoreboard players remove @e[type=!#minecraft:bypass,scores={thunder_aspect_timing=1..}] thunder_aspect_timing 1
execute as @e[type=!#minecraft:bypass,scores={thunder_aspect_timing=1}] unless entity @s[tag=immune_to_freeze] run data merge entity @s {NoAI:0b}