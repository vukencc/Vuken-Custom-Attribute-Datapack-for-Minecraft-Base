kill @e[tag=boss_4]
title @a subtitle {"text":Victory,color:gold,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.player.levelup hostile @a ~ ~ ~
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_4
scoreboard objectives remove boss.skill_timing

kill @e[tag=b4_s1_marker]
kill @e[tag=b4_s2_dummy]
kill @e[tag=b4_s3_enemy]
kill @e[tag=b4_s5_enemy]

summon minecraft:marker -954.48 45.00 1048.52 {Tags:["b4_out"]}

tp @a -982.52 -58.00 1048.51 facing -985.52 -59.00 1048.51
execute as @a run attribute @s gravity modifier remove b4_s4

clone -611 270 308 -611 270 308 -611 166 308