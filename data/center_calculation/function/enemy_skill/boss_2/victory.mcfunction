kill @e[tag=boss_2]
title @a subtitle {"text":Victory,color:gold,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.player.levelup hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_2
scoreboard objectives remove boss.skill_timing

kill @e[tag=b2_s2_enemy]
kill @e[tag=b2_s4_dummy]
kill @e[tag=b2_s4_marker]
