scoreboard objectives add resin_clump_cost dummy
scoreboard players set @s resin_clump_cost 0

scoreboard objectives add resin_clump_cost_1 dummy
execute store result score @s resin_clump_cost_1 run data get entity @n[tag=af_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_1
scoreboard objectives remove resin_clump_cost_1

scoreboard objectives add resin_clump_cost_2 dummy
execute store result score @s resin_clump_cost_2 run data get entity @n[tag=pf_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_2
scoreboard objectives remove resin_clump_cost_2

scoreboard objectives add resin_clump_cost_3 dummy
execute store result score @s resin_clump_cost_3 run data get entity @n[tag=uf_forge_show] item.components."minecraft:custom_data".resin_cost
scoreboard players operation @s resin_clump_cost += @s resin_clump_cost_3
scoreboard objectives remove resin_clump_cost_3

title @s times 0 40t 0
title @s subtitle [{bold:1b,color:"#baffff",text:"空之精华需求 : "},{"score":{"name":"@s","objective":"resin_clump_cost"},color:aqua,bold:true}]
title @s title [{text:" "}]