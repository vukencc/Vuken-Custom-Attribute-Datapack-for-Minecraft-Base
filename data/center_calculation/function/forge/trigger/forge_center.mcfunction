advancement revoke @s only center_calculation:forge_hurt
advancement revoke @s only center_calculation:forge_inter
kill @n[tag=active_txt]
kill @n[tag=passive_txt]
execute at @n[tag=Forge] run summon text_display ~1 ~ ~ {Tags:["active_txt"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{bold:1b,color:"red",text:"Active"},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~-1 ~ ~ {Tags:["passive_txt"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{bold:1b,color:"green",text:"Passive"},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
#Forge af_Forge pf_Forge
scoreboard players set @n[tag=Forge] marker 0
scoreboard players set @n[tag=Forge] marker_2 0
execute as @n[tag=Forge] store result score @s marker run data get entity @s attack.timestamp
execute as @n[tag=Forge] store result score @s marker_2 run data get entity @s interaction.timestamp
data modify entity @n[tag=Forge] attack.timestamp set value 0
data modify entity @n[tag=Forge] interaction.timestamp set value 0
kill @n[tag=af_Forge]
kill @n[tag=pf_Forge]
#return active&passive :
function center_calculation:forge/trigger/return_forge_af
function center_calculation:forge/trigger/return_forge_pf
#reload :
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ActiveSlot:1}}}}] if items entity @s weapon.mainhand #melee_weapon at @n[tag=Forge] run summon interaction ~1 ~ ~ {Tags:["af_Forge"]}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{PassiveSlot:1}}}}] if items entity @s weapon.mainhand #armor at @n[tag=Forge] run summon interaction ~-1 ~ ~ {Tags:["pf_Forge"]}
execute if score @n[tag=Forge] marker matches 1.. run function center_calculation:forge/trigger/return_forge
execute if score @n[tag=Forge] marker_2 matches 1.. run function center_calculation:forge/trigger/give_forge

execute if entity @e[tag=forge_show] run function center_calculation:forge/trigger/deal_cal

kill @n[tag=deal_Forge]
execute if entity @e[tag=forge_show] at @n[tag=Forge] run summon interaction ~ ~-1 ~ {Tags:["deal_Forge"],width:1.35}