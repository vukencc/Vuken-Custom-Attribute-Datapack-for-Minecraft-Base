execute unless entity @s[gamemode=adventure] unless entity @s[gamemode=survival] run return fail
tp @s -649.5 5.00 249.00
title @a subtitle {text:"-= Paranoia =-",color:"#d09eff",bold:true}
title @a title {"text":""}
effect give @a slow_falling 1 0 true
gamerule immediate_respawn true
execute as @e[tag=Boss] run tp @s ~ ~-100 ~
item replace entity @e[tag=Boss] saddle with air
kill @e[tag=Boss]
execute at @s run playsound entity.wither.spawn hostile @s ~ ~ ~

execute if entity @p[scores={boss_deaths=0}] run return fail

function map_only:boss/paranoia/skill/s1/end
function map_only:boss/paranoia/skill/s2/end
function map_only:boss/paranoia/skill/s3/end
kill @e[type=skeleton,tag=Boss_1_s5_1]

scoreboard objectives add boss_deaths deathCount
scoreboard objectives add boss_hp dummy
scoreboard objectives add boss_timing dummy
team add Boss
team modify Boss collisionRule never
scoreboard players set $s_vir boss_hp 2000
scoreboard players set @a boss_deaths 0
scoreboard players set @a in_boss 1
scoreboard players set @a music_timing 5

bossbar add boss_hp {text:"-= Paranoia =-",color:"#d09eff",bold:true}
bossbar set boss_hp max 2000
bossbar set boss_hp value 2000
bossbar set boss_hp color purple
bossbar set boss_hp players @a
bossbar set boss_hp style notched_10
bossbar set boss_hp visible true

summon mannequin -637.01 5.00 249.011 {Health:1024.0f,Team:"Boss",attributes:[{base:1024,id:max_health}],\
immovable:0b,main_hand:"right",pose:"standing",profile:{properties:[{name:"textures",signature:"AlPVHZBo5hqvYGvHVgrkuTxn/nMWoFIK5ccqV7wPgVcAUbzTGM5WE4Kp02L86f+hfy8Hb2qB5ntaN4TreQaSqVBI2PduVxGSt54XQfwH1aP2vgu4SKzO1V5EuKDD19PyOrHvYJKqkOHO+r04j63UE09OvgRUD0aFfF4O+2IfHVbA44o1ub7kKoYfrLkWry2gnMUqvclGF6V/spxnk7MrnkdB6OSzJ9m7FF6d3CLeN5CDOhoK9XpJNAwSFGXgPBPhMPtCduTDPI4Too8CB6lRBJW4J8CN0GGk2tUBnPSKNcP42/e43KI9Vdb7xi0bwMA+sU4tOh2EgNOdTcG+j6HQY1AqQXOh1lNqm5OUfP3oSQLaxRF1KmJG4LZi7SKCgo7r60qiCuMnj8hwDcdllB1FS60gF5GzKUz15uWK46wzAzrr3/ZMwW37ilnKMEz5xAysHoWPSltbuYpSLT3hDit+BT2PlP6JEr1SaBPZaumJ8fdtUza+AUMUvXMUGuxTPl5VXd0+P4EKy+GDfY7ZnOc7giUD5/LYTmBVoBqQyNCTVdqzGZhM3ddYHyxofQsu0+Wf7XRGexsJA+X/QPtoZ5XULuyL0dOj+OtT1janft7I9a9krmi7/9EkX5VznYbyd2kN35qe5q1fVU+Ywj7PrtLQqQ9JNHY8aJXNbtDVJz7U0Mw=",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2Mjg2NjQ2MDQ5MSwKICAicHJvZmlsZUlkIiA6ICI5Yjk1NmI4Nzk3MzA0YjJmYjdlZGU1NjgyNjdiZDFjZiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNaW5lX0hpbmF0YSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8zNGJiZDhkMzRiMzFlOTU2ZjQxNDA0YjQyZDRlYjIzZGQxNjdhMTNkMGM3ZGQ2MDA4NzQxNjAyMWI4ZGRlZDhkIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},hidden_layers:[],description:[{translate:boss.paranoia.lore,color:"#efddff",bold:true}],\
Tags:["Boss","Boss_1","Boss_1_Stats_1"],\
CustomNameVisible:true,CustomName:[{text:"-= Paranoia =-",color:"#d09eff",bold:true}]\
}

summon skeleton -637.01 5.00 249.011 {PersistenceRequired:1b,Silent:1b,Health:1024.0f,active_effects:[{id:"invisibility",duration:9999999,amplifier:0,show_particles:false},{id:speed,duration:9999999,amplifier:0,show_particles:false}],Tags:["Boss","BossPas"],\
equipment:{saddle:{id:saddle,count:1,components:{enchantments:{"core:system/boss/veh_marker":1}}}},\
attributes:[{base:1024,id:max_health},{base:0.9,id:scale},{base:10,id:attack_damage}],DeathLootTable:"",drop_chances:{mainhand:0,saddle:0,offhand:0,body:0,chest:0,feet:0,head:0,legs:0},Team:"Boss",data:{damage:{melee:15}}}

execute as @n[tag=Boss_1] run function map_only:boss/paranoia/system/boss_modifier

summon item_display -637.01 5.00 249.011 {billboard:"vertical",glow_color_override:16756475,item:{count:1,id:"minecraft:golden_sword"},interpolation_duration:0,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,Tags:["Boss","Boss_1_AS_1","Boss_1_AS"]}
summon item_display -637.01 5.00 249.011 {billboard:"vertical",glow_color_override:16756475,item:{count:1,id:"minecraft:golden_sword"},interpolation_duration:0,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,Tags:["Boss","Boss_1_AS_2","Boss_1_AS"]}
summon item_display -637.01 5.00 249.011 {billboard:"vertical",glow_color_override:16756475,item:{count:1,id:"minecraft:golden_sword"},interpolation_duration:0,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,Tags:["Boss","Boss_1_AS_3","Boss_1_AS"]}
summon item_display -637.01 5.00 249.011 {billboard:"vertical",glow_color_override:16756475,item:{count:1,id:"minecraft:golden_sword"},interpolation_duration:1,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,Tags:["Boss","Boss_1_AS_4","Boss_1_AS"]}

advancement grant @a only map_only:boss/paranoia/enter