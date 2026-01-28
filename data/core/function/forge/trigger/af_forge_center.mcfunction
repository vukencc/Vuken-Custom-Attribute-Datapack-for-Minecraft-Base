advancement revoke @s only core:forge_inter/af_forge_hurt
advancement revoke @s only core:forge_inter/af_forge_inter
#Forge af_Forge af_Forge
scoreboard players set @n[tag=af_Forge] marker 0
scoreboard players set @n[tag=af_Forge] marker_2 0
execute as @n[tag=af_Forge] store result score @s marker run data get entity @s attack.timestamp
execute as @n[tag=af_Forge] store result score @s marker_2 run data get entity @s interaction.timestamp
data modify entity @n[tag=af_Forge] attack.timestamp set value 0
data modify entity @n[tag=af_Forge] interaction.timestamp set value 0
#return active&passive :
function core:forge/trigger/return_forge_af
#reload :
execute if score @n[tag=af_Forge] marker matches 1.. run function core:forge/trigger/return_forge_af
execute if score @n[tag=af_Forge] marker_2 matches 1.. run function core:forge/trigger/give_forge_af

execute if entity @e[tag=forge_show] run function core:forge/trigger/deal_cal