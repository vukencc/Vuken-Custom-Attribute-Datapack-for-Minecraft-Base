tp @a -642.50 92.00 249.00
title @a subtitle {translate:rawtext.boss.defeated,color:red,bold:true}
title @a title {text:""}
schedule function map_only:boss/paranoia/system/reset 1t

execute as @a at @s run playsound entity.wither.hurt hostile @s ~ ~ ~
scoreboard objectives remove boss_deaths
scoreboard objectives remove boss_hp
scoreboard objectives remove boss_timing
bossbar remove boss_hp
scoreboard players set @a in_boss 0
gamerule immediate_respawn false
scoreboard players set @a music_timing 10