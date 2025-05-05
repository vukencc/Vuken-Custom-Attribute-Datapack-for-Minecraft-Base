kill @e[tag=boss_2]
tp @a -618.40 118.00 289.48
title @a subtitle {"text":Defeated,color:red,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.wither.death hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_2
#missing redstone - cb
setblock -615 270 305 air
#---------------
scoreboard objectives remove boss.skill_timing

kill @e[tag=b2_s2_enemy]
kill @e[tag=b2_s4_dummy]
kill @e[tag=b2_s4_marker]