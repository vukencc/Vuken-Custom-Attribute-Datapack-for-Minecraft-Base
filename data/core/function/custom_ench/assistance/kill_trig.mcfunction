execute store result score @s frenzy_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/frenzy" 25
execute store result score @s frenzy_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/frenzy" 25
execute store result score @s frenzy_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/frenzy" 25
execute store result score @s frenzy_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/frenzy" 25
execute store result score @s frenzy_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/frenzy" 25
execute store result score @s frenzy_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/frenzy" 25
scoreboard players operation @s frenzy_p1 += @s frenzy_p2
scoreboard players operation @s frenzy_p1 += @s frenzy_p3
scoreboard players operation @s frenzy_p1 += @s frenzy_p4
scoreboard players operation @s frenzy_p1 += @s frenzy_p5
scoreboard players operation @s frenzy_p1 += @s frenzy_p6

execute store result score @s energy_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/energy" 15
execute store result score @s energy_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/energy" 15
execute store result score @s energy_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/energy" 15
execute store result score @s energy_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/energy" 15
execute store result score @s energy_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/energy" 15
execute store result score @s energy_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/energy" 15
scoreboard players operation @s energy_p1 += @s energy_p2
scoreboard players operation @s energy_p1 += @s energy_p3
scoreboard players operation @s energy_p1 += @s energy_p4
scoreboard players operation @s energy_p1 += @s energy_p5
scoreboard players operation @s energy_p1 += @s energy_p6

execute store result score @s hasten_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/hasten" 15
execute store result score @s hasten_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/hasten" 15
execute store result score @s hasten_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/hasten" 15
execute store result score @s hasten_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/hasten" 15
execute store result score @s hasten_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/hasten" 15
execute store result score @s hasten_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/hasten" 15
scoreboard players operation @s hasten_p1 += @s hasten_p2
scoreboard players operation @s hasten_p1 += @s hasten_p3
scoreboard players operation @s hasten_p1 += @s hasten_p4
scoreboard players operation @s hasten_p1 += @s hasten_p5
scoreboard players operation @s hasten_p1 += @s hasten_p6

execute store result score @s life_drain_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/life_drain" 1
execute store result score @s life_drain_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/life_drain" 1
execute store result score @s life_drain_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/life_drain" 1
execute store result score @s life_drain_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/life_drain" 1
execute store result score @s life_drain_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/life_drain" 1
execute store result score @s life_drain_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/life_drain" 1
scoreboard players operation @s life_drain_p1 += @s life_drain_p2
scoreboard players operation @s life_drain_p1 += @s life_drain_p3
scoreboard players operation @s life_drain_p1 += @s life_drain_p4
scoreboard players operation @s life_drain_p1 += @s life_drain_p5
scoreboard players operation @s life_drain_p1 += @s life_drain_p6

summon marker ~ ~ ~ {Tags:["temp_assistance"],data:{frenzy:0.0,energy:0.0,hasten:0.0,health:0.0,temp_hp:0}}
execute store result entity @n[type=marker,tag=temp_assistance] data.frenzy float 0.01 run scoreboard players get @s frenzy_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.energy float 0.01 run scoreboard players get @s energy_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.hasten float 0.01 run scoreboard players get @s hasten_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.health float 1 run scoreboard players get @s life_drain_p1

function core:custom_ench/assistance/kill_apply with entity @n[type=marker,tag=temp_assistance] data
function operation:stats/player_heal/single/init with entity @n[type=marker,tag=temp_assistance] data

kill @n[type=marker,tag=temp_assistance]