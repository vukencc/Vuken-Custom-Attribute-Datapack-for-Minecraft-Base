kill @e[tag=boss_1]
tp @a -144 78 543
title @a subtitle {"text":Defeated,color:red,bold:true,underlined:true}
title @a title {"text":" "}
execute at @p run playsound entity.wither.death hostile @a ~ ~ ~
clone -149 291 576 -138 309 576 -149 83 576
scoreboard objectives remove boss.temp_deaths
scoreboard players set @a in_boss 0
bossbar remove boss_1
setblock -149 122 582 air
scoreboard objectives remove boss.skill_timing
clone -159 297 578 -128 297 625 -159 83 578
kill @e[tag=b1_s2_move]
fill -162 84 578 -125 84 628 air replace fire
kill @e[tag=b1_s3]
tag @e remove b1_s1_s4