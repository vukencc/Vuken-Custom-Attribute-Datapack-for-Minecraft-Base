tp @a -614.96 166.00 302.65 facing -613.96 167.00 303.65
spawnpoint @a -619 118 289
title @a subtitle {text:"Mist of Survivors",color:white,bold:true}
title @a title {text:"Mushroom?!",color:light_purple,bold:true}
execute at @p run playsound entity.wither.spawn hostile @a ~ ~ ~
scoreboard players set @a in_boss 2
scoreboard objectives add boss.temp_deaths deathCount
scoreboard players set @a boss.temp_deaths 0
gamerule doImmediateRespawn true
bossbar add boss_2 {"text":"Mushroom?!",color:light_purple,bold:true}
bossbar set boss_2 color red
bossbar set boss_2 max 1024
bossbar set boss_2 value 1024
bossbar set boss_2 players @a
bossbar set boss_2 visible true
scoreboard objectives add boss.skill_timing dummy
summon magma_cube -610.50 166.00 308.49 {Tags:["boss_2","Boss"],PersistenceRequired:1b,CustomName:[{text:"Silvia",color:blue,bold:true}],CustomNameVisible:1b,attributes:[{base:15,id:attack_damage},{base:1024,id:"max_health"},{base:40,id:follow_range},{base:5,id:scale}],Health:1024,drop_chances:{body:0,chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0},active_effects:[{id:resistance,duration:999999,amplifier:1,show_particles:0b},{id:"invisibility",duration:999999,amplifier:0,show_particles:0b}],NoAI:1b,NoGravity:1b,Glowing:1b,Team:"green"}