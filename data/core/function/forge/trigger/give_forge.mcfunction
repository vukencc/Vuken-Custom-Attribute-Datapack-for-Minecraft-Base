function core:forge/trigger/return_forge
execute unless items entity @s weapon.mainhand #armor unless items entity @s weapon.mainhand *[enchantments~[{enchantments:"#weapon_id"}]] run return fail
execute at @n[tag=Forge] run summon item_display ~ ~0.7 ~ {Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],billboard:"fixed",fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,item_display:"none",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,Glowing:1b,Tags:["forge_show"]}
execute unless items entity @s weapon.mainhand #melee_weapon run data merge entity @n[type=item_display,tag=forge_show] {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.9999999f,0.9999999f,0.99999994f],translation:[0.0f,0.0f,0.0f]}}
execute run data modify entity @n[type=item_display,tag=forge_show] item set from entity @s SelectedItem
execute run team join gold @n[tag=forge_show]
execute run item modify entity @s weapon.mainhand [{function:"set_count",count:-1,add:true}]
execute run playsound entity.allay.item_given hostile @s ~ ~ ~