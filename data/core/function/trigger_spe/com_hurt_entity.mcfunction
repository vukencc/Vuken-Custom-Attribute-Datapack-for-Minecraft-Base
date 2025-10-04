#scores entity related
execute as @s at @s run summon marker ~ ~ ~ {Tags:["temp_melee_inner"],data:{bleed:0.0,combo:0.0,crit:0.0,current:0.0,curse:0.0,first_strike:0.0,focus:0.0,quake:0.0,thunder_aspect:0}}
#bleed combo crit current curse first_strike focus ice_aspect quake slayer thunder_aspect water_aspect
execute as @s at @s store result score @s melee_bleed run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/bleed"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.bleed float 25 run scoreboard players get @s melee_bleed
execute as @s at @s store result score @s melee_combo run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/combo"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.combo float 25 run scoreboard players get @s melee_combo
execute as @s at @s store result score @s melee_crit run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/crit"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.crit float 25 run scoreboard players get @s melee_crit
execute as @s at @s store result score @s melee_current run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/current"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.current float 25 run scoreboard players get @s melee_current
execute as @s at @s store result score @s melee_curse run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/curse"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.curse float 25 run scoreboard players get @s melee_curse
execute as @s at @s store result score @s melee_first_strike run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/first_strike"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.first_strike float 25 run scoreboard players get @s melee_first_strike
execute as @s at @s store result score @s melee_focus run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/focus"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.focus float 25 run scoreboard players get @s melee_focus
execute as @s at @s store result score @s melee_quake run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/quake"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.quake float 25 run scoreboard players get @s melee_quake
execute as @s at @s store result score @s melee_thunder_aspect run data get entity @s SelectedItem.components."minecraft:enchantments"."core:melee/thunder_aspect"
execute as @s at @s store result entity @n[type=marker,tag=temp_melee_inner] data.thunder_aspect int 1 run scoreboard players get @s melee_thunder_aspect
#slayer
execute at @s positioned ^ ^ ^2 as @e[type=!#minecraft:bypass,distance=..3.5,nbt={HurtTime:10s}] run function core:custom_ench/melee/melee_argu with entity @n[type=marker,tag=temp_melee_inner] data
execute as @p at @s run function core:custom_ench/melee/melee_trig with entity @n[type=marker,tag=temp_melee_inner] data

execute if score @s melee_combo matches 1.. run scoreboard players set @s ench_combo_timing 30

kill @n[type=marker,tag=temp_melee_inner]

advancement revoke @s only core:com_hurt_entity
