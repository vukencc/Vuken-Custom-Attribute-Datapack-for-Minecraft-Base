tag @a add CTM_5_collect
title @a subtitle {"text":"Recalling Sand Defeated",color:aqua,bold:true,underlined:true}
title @a title {text:" "}
setblock 31 181 243 jukebox[has_record=false]
stopsound @a
execute as @a at @s run playsound music_disc.relic voice @s ~ ~ ~

summon item_display 31.5 185.5 241.5 {Glowing:1b,Rotation:[0.0f,0.0f],billboard:"fixed",fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,item:{count:1,id:"minecraft:music_disc_relic"},item_display:"none",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,Tags:["CTM_5_collect_show"]}
team join purple @e[tag=CTM_5_collect_show]