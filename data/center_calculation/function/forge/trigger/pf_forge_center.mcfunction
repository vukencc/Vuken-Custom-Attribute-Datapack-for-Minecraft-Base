advancement revoke @s only center_calculation:forge_inter/pf_forge_hurt
advancement revoke @s only center_calculation:forge_inter/pf_forge_inter
#Forge af_Forge pf_Forge
scoreboard players set @n[tag=pf_Forge] marker 0
scoreboard players set @n[tag=pf_Forge] marker_2 0
execute as @n[tag=pf_Forge] store result score @s marker run data get entity @s attack.timestamp
execute as @n[tag=pf_Forge] store result score @s marker_2 run data get entity @s interaction.timestamp
data modify entity @n[tag=pf_Forge] attack.timestamp set value 0
data modify entity @n[tag=pf_Forge] interaction.timestamp set value 0
#return active&passive :
function center_calculation:forge/trigger/return_forge_pf
#reload :
execute if score @n[tag=pf_Forge] marker matches 1.. run function center_calculation:forge/trigger/return_forge_pf
execute if entity @s[nbt={SelectedItem:{id:"minecraft:book",components:{"minecraft:custom_data":{PassiveSlot:1}}}}] if score @n[tag=pf_Forge] marker_2 matches 1.. run function center_calculation:forge/trigger/give_forge_pf

execute if entity @e[tag=forge_show] run function center_calculation:forge/trigger/deal_cal