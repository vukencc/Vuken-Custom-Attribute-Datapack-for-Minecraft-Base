tag @a add CTM_1_collect
title @a subtitle {"text":"Saints & Knights Defeated",color:aqua,bold:true,underlined:true}
title @a title {text:" "}
setblock 31 181 243 jukebox[has_record=false]
stopsound @a
execute as @a at @s run playsound music_disc.creator_music_box voice @s ~ ~ ~

summon item_display 32.5 182.5 241.5 {Glowing:1b,Rotation:[0.0f,0.0f],UUID:[I;-276642552,-1644804314,-1998953494,-1832536415],billboard:"fixed",fall_distance:0.0d,glow_color_override:-1,height:0.0f,interpolation_duration:0,item:{count:1,id:"minecraft:music_disc_creator_music_box"},item_display:"none",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f,Tags:["CTM_1_collect_show"]}
team join gold @n[tag=CTM_1_collect_show]

