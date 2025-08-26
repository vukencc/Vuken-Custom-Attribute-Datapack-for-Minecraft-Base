execute if score @s player.HurtTime matches 1.. unless entity @s[tag=bypassHurtTime] run return fail
#$damage @s $(damage_store) center_calculation:custombp
execute store result score @s stdTemp1 run data get entity @s Health 10
$scoreboard players remove @s stdTemp1 $(damage_store)
scoreboard players operation @s player.HurtTime = @s player.BypassHurtTime
kill @n[type=marker,tag=cct_det_inter]
tag @s remove bypassHurtTime
execute if score @s stdTemp1 matches ..0 run return run function center_calculation:trigger_spe/player_kill_this

summon marker ~ ~ ~ {Tags:["stdTemp1"],data:{temp_hp:0.0}}
execute store result entity @n[type=marker,tag=stdTemp1] data.temp_hp float 0.1 run scoreboard players get @s stdTemp1
function center_calculation:damage/apply_to_player with entity @n[type=marker,tag=stdTemp1] data
kill @n[type=marker,tag=stdTemp1]