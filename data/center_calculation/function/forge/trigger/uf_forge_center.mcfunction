advancement revoke @s only center_calculation:forge_inter/uf_forge_hurt
advancement revoke @s only center_calculation:forge_inter/uf_forge_inter
#Forge af_Forge uf_Forge
scoreboard players set @n[tag=uf_Forge] marker 0
scoreboard players set @n[tag=uf_Forge] marker_2 0
execute as @n[tag=uf_Forge] store result score @s marker run data get entity @s attack.timestamp
execute as @n[tag=uf_Forge] store result score @s marker_2 run data get entity @s interaction.timestamp
data modify entity @n[tag=uf_Forge] attack.timestamp set value 0
data modify entity @n[tag=uf_Forge] interaction.timestamp set value 0
#return active&passive :
function center_calculation:forge/trigger/return_forge_uf
#reload :
execute if score @n[tag=uf_Forge] marker matches 1.. run function center_calculation:forge/trigger/return_forge_uf
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{UpgradeSlot:1}}}}] if score @n[tag=uf_Forge] marker_2 matches 1.. run function center_calculation:forge/trigger/give_forge_uf

execute if entity @e[tag=forge_show] run function center_calculation:forge/trigger/deal_cal