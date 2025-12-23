advancement revoke @s only core:forge_inter/deal_hurt

scoreboard objectives add temp_forge_count dummy
scoreboard players set @s temp_forge_count 0
function core:forge/trigger/accept
#------
scoreboard objectives remove temp_forge_count
#-----
