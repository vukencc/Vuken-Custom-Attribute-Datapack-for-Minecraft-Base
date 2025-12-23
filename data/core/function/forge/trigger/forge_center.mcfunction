advancement revoke @s only core:forge_inter/forge_hurt
advancement revoke @s only core:forge_inter/forge_inter
kill @n[tag=active_txt]
kill @n[tag=passive_txt]
kill @n[tag=upgrade_txt]

kill @n[tag=active_txt_1]
kill @n[tag=active_txt_2]
kill @n[tag=active_txt_3]
kill @n[tag=active_txt_4]
kill @n[tag=active_txt_5]

kill @n[tag=passive_txt_1]
kill @n[tag=passive_txt_2]
kill @n[tag=passive_txt_3]
kill @n[tag=passive_txt_4]
kill @n[tag=passive_txt_5]

execute at @n[tag=Forge] run summon text_display ~2.6 ~1 ~ {Tags:["active_txt"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{bold:1b,color:"red",text:"属性强化"},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}

execute at @n[tag=Forge] run summon text_display ~2.6 ~0.75 ~ {Tags:["active_txt_1"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~2.6 ~0.5 ~ {Tags:["active_txt_2"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~2.6 ~0.25 ~ {Tags:["active_txt_3"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~2.6 ~ ~ {Tags:["active_txt_4"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~2.6 ~-0.25 ~ {Tags:["active_txt_5"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}

execute at @n[tag=Forge] run summon text_display ~-2.6 ~1 ~ {Tags:["passive_txt"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{bold:1b,color:"green",text:"附魔强化"},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}

execute at @n[tag=Forge] run summon text_display ~-2.6 ~0.75 ~ {Tags:["passive_txt_1"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~-2.6 ~0.5 ~ {Tags:["passive_txt_2"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~-2.6 ~0.25 ~ {Tags:["passive_txt_3"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~-2.6 ~ ~ {Tags:["passive_txt_4"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}
execute at @n[tag=Forge] run summon text_display ~-2.6 ~-0.25 ~ {Tags:["passive_txt_5"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{translate:"",color:"#8aeeff",italic:false},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}

execute at @n[tag=Forge] run summon text_display ~ ~2.5 ~ {Tags:["upgrade_txt"],Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{bold:1b,color:"aqua",text:"能力扩展"},transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}

kill @e[type=text_display,tag=clump_cost_display]
execute at @n[tag=Forge] run summon text_display ~ ~-0.6 ~-0.7 {Tags:["clump_cost_display"],Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:[{bold:1b,color:"#ace8ff",text:"左键以确认"}],transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,brightness:{block:15,sky:15}}
execute as @n[tag=Forge] at @s if entity @s[tag=posrow_2] run tp @n[type=text_display,tag=clump_cost_display] ~ ~-0.6 ~0.7
#Forge af_Forge pf_Forge
scoreboard players set @n[tag=Forge] marker 0
scoreboard players set @n[tag=Forge] marker_2 0
execute as @n[tag=Forge] store result score @s marker run data get entity @s attack.timestamp
execute as @n[tag=Forge] store result score @s marker_2 run data get entity @s interaction.timestamp
data modify entity @n[tag=Forge] attack.timestamp set value 0
data modify entity @n[tag=Forge] interaction.timestamp set value 0
kill @n[tag=af_Forge]
kill @n[tag=pf_Forge]
kill @n[tag=uf_Forge]
#return active&passive :
function core:forge/trigger/return_forge_af
function core:forge/trigger/return_forge_pf
function core:forge/trigger/return_forge_uf
#reload :
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ActiveSlot:1}}}}] if items entity @s weapon.mainhand #armor at @n[tag=Forge] run summon interaction ~0.7 ~ ~ {Tags:["af_Forge"],width:0.7}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{PassiveSlot:1}}}}] if items entity @s weapon.mainhand #armor at @n[tag=Forge] run summon interaction ~-0.7 ~ ~ {Tags:["pf_Forge"],width:0.7}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{UpgradeSlot:1}}}}] if items entity @s weapon.mainhand #armor at @n[tag=Forge] run summon interaction ~ ~1.1 ~ {Tags:["uf_Forge"],height:0.7}

execute if score @n[tag=Forge] marker matches 1.. run function core:forge/trigger/return_forge
execute if score @n[tag=Forge] marker_2 matches 1.. run function core:forge/trigger/give_forge

execute if entity @e[tag=forge_show] run function core:forge/trigger/deal_cal

kill @n[tag=deal_Forge]
execute if entity @e[tag=forge_show] at @n[tag=Forge] run summon interaction ~ ~-1 ~ {Tags:["deal_Forge"],width:1.35}

data modify entity @n[tag=active_txt_1] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".af_show.[0]
data modify entity @n[tag=active_txt_2] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".af_show.[1]
data modify entity @n[tag=active_txt_3] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".af_show.[2]
data modify entity @n[tag=active_txt_4] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".af_show.[3]
data modify entity @n[tag=active_txt_5] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".af_show.[4]

data modify entity @n[tag=passive_txt_1] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".pf_show.[0]
data modify entity @n[tag=passive_txt_2] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".pf_show.[1]
data modify entity @n[tag=passive_txt_3] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".pf_show.[2]
data modify entity @n[tag=passive_txt_4] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".pf_show.[3]
data modify entity @n[tag=passive_txt_5] text.translate set from entity @n[tag=forge_show] item.components."minecraft:custom_data".pf_show.[4]