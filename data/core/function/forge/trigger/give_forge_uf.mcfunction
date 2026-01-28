function core:forge/trigger/return_forge_uf
execute unless items entity @s weapon.mainhand *[custom_data~{UpgradeSlot:1}] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:head}] unless items entity @n[type=item_display,tag=forge_show] contents #minecraft:head_armor unless items entity @n[type=item_display,tag=forge_show] contents #minecraft:skulls run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:chest}] unless items entity @n[type=item_display,tag=forge_show] contents #minecraft:chest_armor run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:legs}] unless items entity @n[type=item_display,tag=forge_show] contents #minecraft:leg_armor run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:feet}] unless items entity @n[type=item_display,tag=forge_show] contents #minecraft:foot_armor run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:sword}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/sword_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:axe}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/axe_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:bow}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/arrow_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:scythe}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/scythe_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:pot}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/pot_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:magic_book}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/magic_book_effect"}]] run return fail
execute if items entity @s weapon.mainhand *[custom_data~{Slot:wand}] unless items entity @n[type=item_display,tag=forge_show] contents *[enchantments~[{enchantments:"core:inter/wand_effect"}]] run return fail

execute if items entity @s weapon.mainhand *[custom_data~{Slot:offhand}] unless items entity @n[type=item_display,tag=forge_show] contents *[custom_data~{Offhand:1b}] run return fail

execute at @n[tag=uf_Forge] run summon item_display ~ ~0.7 ~ {Air:300s,Fire:0s,Invulnerable:0b,Motion:[0.0d,0.0d,0.0d],OnGround:0b,PortalCooldown:0,Rotation:[0.0f,0.0f],billboard:"fixed",fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,item_display:"none",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,Glowing:1b,Tags:["uf_forge_show"]}
data modify entity @n[type=item_display,tag=uf_forge_show] item set from entity @s SelectedItem
data modify entity @n[type=item_display,tag=uf_forge_show] item.count set value 1
item modify entity @s weapon.mainhand [{function:"set_count",count:-1,add:true}]
team join gold @n[type=item_display,tag=uf_forge_show]
playsound entity.allay.item_given hostile @s ~ ~ ~
