#-----res_engage-----#
scoreboard players set @s stdTemp1 100
scoreboard players operation @s stdTemp1 += @s player.Resistance
scoreboard players operation @s stdTemp1 += @s player.Vulnerable
#-----res_fin-----#
$execute store result storage minecraft:s_temp_list a double $(damage_store) run scoreboard players get @s stdTemp1
execute store result storage minecraft:s_temp_list a double 0.01 run data get storage s_temp_list a
function core:trigger_spe/damage_apply with storage s_temp_list
#------dmg_fin------#
scoreboard players operation @s player.HurtTime = @s player.BypassHurtTime
kill @n[type=marker,tag=cct_det_inter]
tag @s remove bypassHurtTime