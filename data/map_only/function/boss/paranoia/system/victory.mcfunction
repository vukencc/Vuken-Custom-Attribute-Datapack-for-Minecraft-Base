title @a subtitle {translate:rawtext.boss.victory,color:blue,bold:true}
title @a title {text:""}

execute as @a at @s run playsound map:entity.player.levelup_fix hostile @s ~ ~ ~
scoreboard objectives remove boss_deaths
scoreboard objectives remove boss_hp
scoreboard objectives remove boss_timing
bossbar remove boss_hp
effect give @a instant_health 1 10 true
effect give @a luck 10 9 true
execute as @e[tag=Boss] run tp @s ~ ~-100 ~
item replace entity @e[tag=Boss] saddle with air
kill @e[tag=Boss]
gamerule immediate_respawn false
scoreboard players set @a in_boss 0
scoreboard players set @a music_timing 10

function map_only:boss/paranoia/skill/s1/end
function map_only:boss/paranoia/skill/s2/end
function map_only:boss/paranoia/skill/s3/end
kill @e[type=skeleton,tag=Boss_1_s5_1]
