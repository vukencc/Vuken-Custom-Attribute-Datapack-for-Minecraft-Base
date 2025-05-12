kill @e[tag=boss_4]
tp @a -1127.5 136.5 1046.5
title @a subtitle {"text":Defeated,color:red,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.wither.death hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_4
#missing redstone - cb
setblock -149 122 582 air
#---------------
scoreboard objectives remove boss.skill_timing
