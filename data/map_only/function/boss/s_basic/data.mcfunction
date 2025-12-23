#Tick for the boss :
execute if entity @s[tag=Boss_1] at @s run function map_only:boss/paranoia/skill/center/tick

#-----end-----#
effect give @s resistance infinite 3 true
execute store result score @s stdTemp1 run data get entity @s Health 10
execute if score @s stdTemp1 matches 10240 run return fail
#Event when the boss is damaged :
execute if entity @s[tag=Boss_1] at @s run function map_only:boss/paranoia/skill/s4/detect

#-----end-----#
scoreboard players set @s stdTemp2 10240
scoreboard players operation @s stdTemp2 -= @s stdTemp1
scoreboard players set @s stdTemp3 2
scoreboard players operation @s stdTemp2 /= @s stdTemp3
scoreboard players operation $s_vir boss_hp -= @s stdTemp2
execute store result bossbar boss_hp value run scoreboard players get $s_vir boss_hp
data modify entity @s Health set value 1024

