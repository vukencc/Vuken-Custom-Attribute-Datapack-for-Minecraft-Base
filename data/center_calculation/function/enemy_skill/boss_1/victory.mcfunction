kill @e[tag=boss_1]
title @a subtitle {"text":Victory,color:gold,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.player.levelup hostile @a ~ ~ ~
clone -149 291 576 -138 309 576 -149 83 576
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_1
clone -145 272 619 -142 273 621 -145 84 619
scoreboard objectives remove boss.skill_timing
clone -159 297 578 -128 297 625 -159 83 578
kill @e[tag=b1_s2_move]
fill -162 84 578 -125 84 628 air replace fire
kill @e[tag=b1_s3]