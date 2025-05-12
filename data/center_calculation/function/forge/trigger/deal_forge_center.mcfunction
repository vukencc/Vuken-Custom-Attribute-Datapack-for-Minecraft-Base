advancement revoke @s only center_calculation:forge_inter/deal_hurt

scoreboard objectives add temp_forge_count dummy
scoreboard players set @s temp_forge_count 0
function center_calculation:forge/trigger/accept
#------
scoreboard objectives remove temp_forge_count
#-----
