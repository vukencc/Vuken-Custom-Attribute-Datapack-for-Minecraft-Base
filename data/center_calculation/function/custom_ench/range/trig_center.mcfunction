#bad_omen.greed slowness.freeze night_vision.ring unluck.starlit hero.sniper&blank

execute store result score @s range_greed run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/greed"

execute store result score @s range_freeze run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/freeze"

execute store result score @s range_ring run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/ring"

execute store result score @s range_starlit run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/starlit"

execute store result score @s range_sniper_blank run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/sniper"

execute if score @s range_sniper_blank matches 0 store result score @s range_sniper_blank run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/point_blank"


execute if score @s range_greed matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add greed_arrow
execute if score @s range_freeze matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add freeze_arrow
execute if score @s range_ring matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add ring_arrow
execute if score @s range_starlit matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add starlit_arrow
execute as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[0].amplifier float 1.0 run scoreboard players get @p range_starlit
execute as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[1].amplifier float 1.0 run scoreboard players get @p range_greed
execute as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[2].amplifier float 1.0 run scoreboard players get @p range_ring
execute as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[3].amplifier float 1.0 run scoreboard players get @p range_freeze
execute as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[4].amplifier float 1.0 run scoreboard players get @p range_sniper_blank

#---------------------transform_effect------------------#
execute if items entity @s weapon.* *[enchantments~[{enchantments:"center_calculation:range/transformation",levels:1}]] at @s as @e[type=#minecraft:arrows,distance=..2.5,nbt=!{pickup:0b}] run data merge entity @s {Glowing:1b,SoundEvent:"entity.arrow.hit_player"}
execute if items entity @s weapon.* *[enchantments~[{enchantments:"center_calculation:range/transformation",levels:1}]] at @s as @e[type=#minecraft:arrows,distance=..2.5,nbt=!{pickup:0b}] run team join aqua @s
#---------------------transform_effect_end----------------#

#--------------modified_arrow_damage----------------------#
execute as @e[type=#minecraft:arrows,distance=..2.5,nbt=!{pickup:0b}] store result entity @s damage double 0.000028 as @p run function center_calculation:damage/range/base
