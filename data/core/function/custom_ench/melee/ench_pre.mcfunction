execute store result score @p melee_bleed run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/bleed"
execute store result entity @s data.bleed float 20 run scoreboard players get @p melee_bleed
execute store result score @p melee_combo run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/combo"
execute store result entity @s data.combo float 20 run scoreboard players get @p melee_combo
execute store result score @p melee_crit run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/crit"
execute store result entity @s data.crit float 20 run scoreboard players get @p melee_crit
execute store result score @p melee_current run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/current"
execute store result entity @s data.current float 20 run scoreboard players get @p melee_current
execute store result score @p melee_curse run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/curse"
execute store result entity @s data.curse float 20 run scoreboard players get @p melee_curse
execute store result score @p melee_first_strike run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/first_strike"
execute store result entity @s data.first_strike float 20 run scoreboard players get @p melee_first_strike
execute store result score @p melee_focus run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/focus"
execute store result entity @s data.focus float 20 run scoreboard players get @p melee_focus
execute store result score @p melee_quake run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/quake"
execute store result entity @s data.quake float 20 run scoreboard players get @p melee_quake
execute store result score @p melee_thunder_aspect run data get entity @p SelectedItem.components."minecraft:enchantments"."core:melee/thunder_aspect"
execute store result entity @s data.thunder_aspect int 1 run scoreboard players get @p melee_thunder_aspect