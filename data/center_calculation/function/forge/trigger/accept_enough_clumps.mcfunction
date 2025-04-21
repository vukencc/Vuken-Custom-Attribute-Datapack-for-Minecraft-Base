scoreboard players operation @s temp_forge_count -= @s resin_clump_cost

execute unless entity @n[tag=forge_show,nbt={item:{components:{"minecraft:lore":[{}]}}}] run data merge entity @n[tag=forge_show] {item:{components:{"minecraft:lore":[]}}}
execute unless entity @n[tag=forge_show,nbt={item:{components:{"minecraft:custom_data":{}}}}] run data merge entity @n[tag=forge_show] {item:{components:{"minecraft:custom_data":{}}}}
data merge entity @n[tag=forge_show] {item:{components:{"minecraft:consumable":{consume_seconds:999999,animation:none,has_consume_particles:0b}}}}

data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" merge from entity @n[tag=af_forge_show] item.components."minecraft:custom_data"
data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" merge from entity @n[tag=pf_forge_show] item.components."minecraft:custom_data"

scoreboard objectives add temp_lore_count dummy
execute store result score @s temp_lore_count run data get entity @n[tag=af_forge_show] item.components."minecraft:custom_data".lore_end
# 3 4 5 6 7 8 9 10 11
execute if score @s temp_lore_count matches 3.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[3]
execute if score @s temp_lore_count matches 4.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[4]
execute if score @s temp_lore_count matches 5.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[5]
execute if score @s temp_lore_count matches 6.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[6]
execute if score @s temp_lore_count matches 7.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[7]
execute if score @s temp_lore_count matches 8.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[8]
execute if score @s temp_lore_count matches 9.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[9]
execute if score @s temp_lore_count matches 10.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[10]
execute if score @s temp_lore_count matches 11.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=af_forge_show] item.components."minecraft:lore".[11]

scoreboard objectives add temp_lore_count dummy
execute store result score @s temp_lore_count run data get entity @n[tag=pf_forge_show] item.components."minecraft:custom_data".lore_end
# 3 4 5 6 7 8 9 10 11
execute if score @s temp_lore_count matches 3.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[3]
execute if score @s temp_lore_count matches 4.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[4]
execute if score @s temp_lore_count matches 5.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[5]
execute if score @s temp_lore_count matches 6.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[6]
execute if score @s temp_lore_count matches 7.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[7]
execute if score @s temp_lore_count matches 8.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[8]
execute if score @s temp_lore_count matches 9.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[9]
execute if score @s temp_lore_count matches 10.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[10]
execute if score @s temp_lore_count matches 11.. run data modify entity @n[tag=forge_show] item.components."minecraft:lore" append from entity @n[tag=pf_forge_show] item.components."minecraft:lore".[11]

scoreboard objectives remove temp_lore_count

data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" append from entity @n[tag=af_forge_show] item.components."minecraft:custom_data"
data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" append from entity @n[tag=pf_forge_show] item.components."minecraft:custom_data"

execute if score @s resin_clump_cost matches 10 run clear @s resin_clump 10
execute if score @s resin_clump_cost matches 20 run clear @s resin_clump 20

function center_calculation:forge/trigger/return_forge_af
function center_calculation:forge/trigger/return_forge_pf

kill @n[tag=af_Forge]
kill @n[tag=pf_Forge]

execute at @n[tag=Forge] run particle enchant ~ ~0.5 ~ 1.2 1.2 1.2 0.25 110 normal
playsound block.enchantment_table.use hostile @s ~ ~ ~

team join purple @n[tag=forge_show]