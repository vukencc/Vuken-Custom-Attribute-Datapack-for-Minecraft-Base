scoreboard players operation @s health.B -= @s health.A
execute store result score @s stdTemp1 run data get entity @s equipment.saddle.components."minecraft:enchantments"."operation:stats/vulnerable"
scoreboard players operation @s health.B *= @s stdTemp1
execute store result storage s_temp_list a float 0.01 run scoreboard players get @s health.B
function operation:stats/vulnerable/damage with storage s_temp_list