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

scoreboard objectives add temp_hp dummy
scoreboard players operation @s temp_hp = @s health
scoreboard players operation @s temp_hp += @s life_drain_p1

summon marker ~ ~ ~ {Tags:["temp_assistance"],data:{frenzy:0.0,energy:0.0,hasten:0.0,life_drain:0.0,temp_hp:0}}
execute store result entity @n[type=marker,tag=temp_assistance] data.frenzy float 0.01 run scoreboard players get @s frenzy_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.energy float 0.01 run scoreboard players get @s energy_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.hasten float 0.01 run scoreboard players get @s hasten_p1
execute store result entity @n[type=marker,tag=temp_assistance] data.life_drain float 0.01 run scoreboard players get @s life_drain_p1
scoreboard objectives add temp_max_health dummy
execute store result score @s temp_max_health run attribute @s max_health get
execute if score @s temp_hp > @s temp_max_health run scoreboard players operation @s temp_hp = @s temp_max_health
scoreboard objectives remove temp_max_health
execute store result entity @n[type=marker,tag=temp_assistance] data.temp_hp int 1 run scoreboard players get @s temp_hp
function core:custom_ench/assistance/kill_apply with entity @n[type=marker,tag=temp_assistance] data
function core:custom_ench/apply/regenerate/restore_hp with entity @n[type=marker,tag=temp_assistance] data

kill @n[type=marker,tag=temp_assistance]

scoreboard objectives remove temp_hp