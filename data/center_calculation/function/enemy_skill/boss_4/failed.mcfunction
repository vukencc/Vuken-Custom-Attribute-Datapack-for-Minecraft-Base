kill @e[tag=boss_4]
tp @a -1127.5 136.5 1046.5
title @a subtitle {"text":Defeated,color:red,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.wither.death hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_4
#missing redstone - cb
setblock -962 171 1041 air
#---------------
scoreboard objectives remove boss.skill_timing

kill @e[tag=b4_s1_marker]
kill @e[tag=b4_s2_dummy]
kill @e[tag=b4_s3_enemy]
kill @e[tag=b4_s5_enemy]
execute as @a run attribute @s gravity modifier remove b4_s4