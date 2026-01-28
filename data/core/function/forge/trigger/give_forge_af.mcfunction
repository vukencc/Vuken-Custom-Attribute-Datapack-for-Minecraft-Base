function core:forge/trigger/return_forge_af
execute unless items entity @s weapon.mainhand *[custom_data~{ActiveSlot:1}] run return fail
execute at @n[tag=af_Forge] run summon item_display ~ ~0.7 ~ {Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],billboard:"fixed",fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,item_display:"none",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,Glowing:1b,Tags:["af_forge_show"]}
data modify entity @n[type=item_display,tag=af_forge_show] item set from entity @s SelectedItem
data modify entity @n[type=item_display,tag=af_forge_show] item.count set value 1
item modify entity @s weapon.mainhand [{function:"set_count",count:-1,add:true}]
team join gold @n[type=item_display,tag=af_forge_show]
playsound entity.allay.item_given hostile @s ~ ~ ~

data modify entity @n[tag=active_txt_1] text.color set value "#8aeeff"
data modify entity @n[tag=active_txt_2] text.color set value "#8aeeff"
data modify entity @n[tag=active_txt_3] text.color set value "#8aeeff"
data modify entity @n[tag=active_txt_4] text.color set value "#8aeeff"
data modify entity @n[tag=active_txt_5] text.color set value "#8aeeff"

scoreboard objectives add temp_marker_1 dummy

execute store result score @s temp_marker_1 run data get entity @n[type=item_display,tag=af_forge_show] item.components."minecraft:custom_data".level

execute if score @s temp_marker_1 matches 1.. run data modify entity @n[tag=active_txt_1] text.color set value green
execute if score @s temp_marker_1 matches 2.. run data modify entity @n[tag=active_txt_2] text.color set value green
execute if score @s temp_marker_1 matches 3.. run data modify entity @n[tag=active_txt_3] text.color set value green
execute if score @s temp_marker_1 matches 4.. run data modify entity @n[tag=active_txt_4] text.color set value green
execute if score @s temp_marker_1 matches 5.. run data modify entity @n[tag=active_txt_5] text.color set value green

scoreboard objectives remove temp_marker_1