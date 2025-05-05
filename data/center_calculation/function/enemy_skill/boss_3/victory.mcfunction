kill @e[tag=boss_4]
title @a subtitle {"text":Victory,color:gold,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.player.levelup hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_4
scoreboard objectives remove boss.skill_timing
