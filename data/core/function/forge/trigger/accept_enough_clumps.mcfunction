scoreboard players operation @s temp_forge_count -= @s resin_clump_cost

execute unless entity @n[tag=forge_show,nbt={item:{components:{"minecraft:lore":[{}]}}}] run data merge entity @n[tag=forge_show] {item:{components:{"minecraft:lore":[]}}}
execute unless entity @n[tag=forge_show,nbt={item:{components:{"minecraft:custom_data":{}}}}] run data merge entity @n[tag=forge_show] {item:{components:{"minecraft:custom_data":{}}}}
data merge entity @n[tag=forge_show] {item:{components:{"minecraft:consumable":{consume_seconds:999999,animation:none,has_consume_particles:0b}}}}

scoreboard objectives add temp_marker_1 dummy
scoreboard objectives add temp_marker_2 dummy


execute store result score @s temp_marker_1 run data get entity @n[tag=af_forge_show] item.components."minecraft:custom_data".level
execute store result score @s temp_marker_2 run data get entity @n[tag=pf_forge_show] item.components."minecraft:custom_data".level

data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" merge from entity @n[tag=af_forge_show] item.components."minecraft:custom_data"
data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" merge from entity @n[tag=pf_forge_show] item.components."minecraft:custom_data"
data modify entity @n[tag=forge_show] item.components."minecraft:custom_data" merge from entity @n[tag=uf_forge_show] item.components."minecraft:custom_data"

execute if score @s temp_marker_1 matches 1.. run data modify entity @n[tag=forge_show] item.components."minecraft:attribute_modifiers" set from entity @n[tag=forge_show] item.components."minecraft:custom_data".attribute_modifiers.[0]

execute if score @s temp_marker_1 matches 2.. run data modify entity @n[tag=forge_show] item.components."minecraft:attribute_modifiers" set from entity @n[tag=forge_show] item.components."minecraft:custom_data".attribute_modifiers.[1]

execute if score @s temp_marker_1 matches 3.. run data modify entity @n[tag=forge_show] item.components."minecraft:attribute_modifiers" set from entity @n[tag=forge_show] item.components."minecraft:custom_data".attribute_modifiers.[2]

execute if score @s temp_marker_1 matches 4.. run data modify entity @n[tag=forge_show] item.components."minecraft:attribute_modifiers" set from entity @n[tag=forge_show] item.components."minecraft:custom_data".attribute_modifiers.[3]

execute if score @s temp_marker_1 matches 5.. run data modify entity @n[tag=forge_show] item.components."minecraft:attribute_modifiers" set from entity @n[tag=forge_show] item.components."minecraft:custom_data".attribute_modifiers.[4]

execute if score @s temp_marker_2 matches 1.. run data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=forge_show] item.components."minecraft:custom_data".enchantments.[0]
execute if score @s temp_marker_2 matches 2.. run data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=forge_show] item.components."minecraft:custom_data".enchantments.[1]
execute if score @s temp_marker_2 matches 3.. run data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=forge_show] item.components."minecraft:custom_data".enchantments.[2]
execute if score @s temp_marker_2 matches 4.. run data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=forge_show] item.components."minecraft:custom_data".enchantments.[3]
execute if score @s temp_marker_2 matches 5.. run data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=forge_show] item.components."minecraft:custom_data".enchantments.[4]

data modify entity @n[tag=forge_show] item.components."minecraft:enchantments" merge from entity @n[tag=uf_forge_show] item.components."minecraft:enchantments"

scoreboard players set @p stdTemp1 0
execute if items entity @n[tag=forge_show] container.0 *[custom_data~{ActiveSlot:1}] run scoreboard players add @p stdTemp1 1
execute if items entity @n[tag=forge_show] container.0 *[custom_data~{PassiveSlot:1}] run scoreboard players add @p stdTemp1 1
execute if items entity @n[tag=forge_show] container.0 *[custom_data~{UpgradeSlot:1}] run scoreboard players add @p stdTemp1 1
execute if score @p stdTemp1 matches 1 if data entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] run data modify entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] set value {text:"★☆☆",color:"#2dfd5a",italic:false}
execute if score @p stdTemp1 matches 2 if data entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] run data modify entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] set value {text:"★★☆",color:"#3d31eb",italic:false}
execute if score @p stdTemp1 matches 3 if data entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] run data modify entity @n[tag=forge_show] item.components."minecraft:lore".[0].extra.[1] set value {text:"★★★",color:"#781ca3",italic:false}

scoreboard objectives remove temp_marker_1
scoreboard objectives remove temp_marker_2

kill @n[tag=af_forge_show]
kill @n[tag=pf_forge_show]

kill @n[tag=clump_cost_display_txt]

function core:forge/trigger/return_forge_uf

kill @n[tag=af_Forge]
kill @n[tag=pf_Forge]
kill @n[tag=uf_Forge]

execute at @n[tag=Forge] run particle enchant ~ ~0.5 ~ 1.2 1.2 1.2 0.25 110 normal
playsound block.enchantment_table.use hostile @s ~ ~ ~

team join purple @n[tag=forge_show]

scoreboard players set @s resin_clump_cost 0