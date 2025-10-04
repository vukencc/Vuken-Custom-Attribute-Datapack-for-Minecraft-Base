execute if score @s inter_custom_cd matches 0 as @s at @s run function center_calculation:inter_chat/main
advancement revoke @s only center_calculation:stats_inter
scoreboard players set @s inter_custom_cd 5
