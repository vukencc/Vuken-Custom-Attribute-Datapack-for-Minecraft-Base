#scores entity related
execute as @s at @s run summon marker ~ ~ ~ {Tags:["temp_melee_inner"],data:{bleed:0.0,combo:0.0,crit:0.0,current:0.0,curse:0.0,first_strike:0.0,focus:0.0,ice_aspect:0,quake:0.0,slayer:0.0,thunder_aspect:0,water_aspect:0}}
#bleed combo crit current curse first_strike focus ice_aspect quake slayer thunder_aspect water_aspect
execute as @s at @s store result score @s melee_bleed run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/bleed"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.bleed float 2.5 run scoreboard players get @s melee_bleed
execute as @s at @s store result score @s melee_combo run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/combo"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.combo float 2.5 run scoreboard players get @s melee_combo
execute as @s at @s store result score @s melee_crit run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/crit"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.crit float 2.5 run scoreboard players get @s melee_crit
execute as @s at @s store result score @s melee_current run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/current"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.current float 2.5 run scoreboard players get @s melee_current
execute as @s at @s store result score @s melee_curse run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/curse"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.curse float 2.5 run scoreboard players get @s melee_curse
execute as @s at @s store result score @s melee_first_strike run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/first_strike"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.first_strike float 2.5 run scoreboard players get @s melee_first_strike
execute as @s at @s store result score @s melee_focus run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/focus"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.focus float 2.5 run scoreboard players get @s melee_focus
execute as @s at @s store result score @s melee_ice_aspect run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/ice_aspect"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.ice_aspect int 1 run scoreboard players get @s melee_ice_aspect
execute as @s at @s store result score @s melee_quake run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/quake"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.quake float 2.5 run scoreboard players get @s melee_quake
execute as @s at @s store result score @s melee_slayer run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/slayer"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.slayer float 2.5 run scoreboard players get @s melee_slayer
execute as @s at @s store result score @s melee_thunder_aspect run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/thunder_aspect"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.thunder_aspect int 1 run scoreboard players get @s melee_thunder_aspect
execute as @s at @s store result score @s melee_water_aspect run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/water_aspect"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.water_aspect int 1 run scoreboard players get @s melee_water_aspect

execute at @s as @e[type=!#minecraft:bypass,distance=..4,nbt={HurtTime:10s}] run function center_calculation:custom_ench/melee/melee_argu with entity @n[type=marker,tag=temp_melee_inner] data
execute as @p at @s run function center_calculation:custom_ench/melee/melee_trig with entity @n[type=marker,tag=temp_melee_inner] data

execute if score @s melee_combo matches 1.. run scoreboard players set @s ench_combo_timing 30

kill @n[type=marker,tag=temp_melee_inner]

function center_calculation:item_spe/passive_trig/hurt_enemy_trig

advancement revoke @s only center_calculation:com_hurt_entity
