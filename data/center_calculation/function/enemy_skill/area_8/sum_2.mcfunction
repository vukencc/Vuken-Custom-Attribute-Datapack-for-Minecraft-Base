execute unless entity @s[tag=a8_hinted] at @s run playsound entity.wither.spawn hostile @s ~ ~ ~
execute unless entity @s[tag=a8_hinted] run tellraw @s [{text:"In this area, every 30 seconds, you will be located and lightning bolt will strike you after 2 seconds.Keep moving and break the beacons to avoid it!",color:red}]
tag @s add a8_hinted

execute if score @s repeat_600_timing matches 1 as @s at @s run function center_calculation:enemy_skill/area_8/lightning_bolt

execute as @e[tag=a8_thunder] at @s run particle end_rod ~ ~1 ~ 2 2 2 0 3 normal
execute as @e[tag=a8_thunder,scores={enemy_skill=40..}] at @s run function center_calculation:enemy_skill/area_8/bolt