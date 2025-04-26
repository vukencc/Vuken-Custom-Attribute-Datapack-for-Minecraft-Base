execute if items entity @s weapon.* *[enchantments~[{enchantments:"center_calculation:range/gravity",levels:1}]] at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] run data merge entity @s {NoGravity:1b}
#buff_transform
execute at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] run data merge entity @s {item:{id:potion,count:1,components:{potion_contents:{custom_effects:[{id:"unluck",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"bad_omen",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"night_vision",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"hunger",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b}]}}}}
#bad_omen.greed slowness.freeze night_vision.ring unluck.starlit
scoreboard players set @s range_freeze 0
execute store result score @s range_greed run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:range/greed"
execute store result score @s range_greed run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/greed"
execute store result score @s range_freeze run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:range/freeze"
execute store result score @s range_freeze run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/freeze"
execute store result score @s range_ring run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:range/ring"
execute store result score @s range_ring run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/ring"
execute store result score @s range_starlit run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:range/starlit"
execute store result score @s range_starlit run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:range/starlit"
execute at @s if score @s range_greed matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add greed_arrow
execute at @s if score @s range_freeze matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add freeze_arrow
execute at @s if score @s range_ring matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add ring_arrow
execute at @s if score @s range_starlit matches 1.. run tag @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] add starlit_arrow
execute at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[0].amplifier float 1.0 run scoreboard players get @p range_starlit
execute at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[1].amplifier float 1.0 run scoreboard players get @p range_greed
execute at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[2].amplifier float 1.0 run scoreboard players get @p range_ring
execute at @s as @e[type=#arrows,nbt=!{pickup:0b},distance=..2.5] store result entity @s item.components."minecraft:potion_contents".custom_effects[3].amplifier float 1.0 run scoreboard players get @p range_freeze
execute if items entity @s weapon.* *[enchantments~[{enchantments:"center_calculation:range/transformation",levels:1}]] at @s as @e[type=#minecraft:arrows,distance=..2.5,nbt=!{pickup:0b}] run data merge entity @s {Glowing:1b,SoundEvent:"entity.arrow.hit_player"}
execute if items entity @s weapon.* *[enchantments~[{enchantments:"center_calculation:range/transformation",levels:1}]] at @s as @e[type=#minecraft:arrows,distance=..2.5,nbt=!{pickup:0b}] run team join aqua @s
tag @p add temp_shooter