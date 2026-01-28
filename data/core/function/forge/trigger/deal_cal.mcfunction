scoreboard objectives add resin_clump_cost dummy
scoreboard players set @s resin_clump_cost 0

scoreboard objectives add resin_clump_cost_1 dummy
execute store result score @s resin_clump_cost_1 run data get entity @n[type=item_display,tag=af_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_1
scoreboard objectives remove resin_clump_cost_1

scoreboard objectives add resin_clump_cost_2 dummy
execute store result score @s resin_clump_cost_2 run data get entity @n[type=item_display,tag=pf_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_2
scoreboard objectives remove resin_clump_cost_2

scoreboard objectives add resin_clump_cost_3 dummy
execute store result score @s resin_clump_cost_3 run data get entity @n[type=item_display,tag=uf_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_3
scoreboard objectives remove resin_clump_cost_3

kill @n[tag=clump_cost_display_txt]
execute at @n[tag=Forge] run summon text_display ~ ~-0.3 ~-0.7 {text:[{bold:1b,color:"#baffff",text:"空之精华需求 : "},{"score":{"name":"@p","objective":"resin_clump_cost"},color:aqua,bold:true}],Tags:["clump_cost_display_txt"],Rotation:[0.0f,0.0f],alignment:"center",background:0,billboard:"vertical",default_background:0b,fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,7.536411E-4f,0.0f,0.99999976f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000005f,1.0000001f,1.0000005f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,brightness:{block:15,sky:15}}
execute as @n[tag=Forge] at @s if entity @s[tag=posrow_2] run tp @n[type=text_display,tag=clump_cost_display_txt] ~ ~-0.3 ~0.7