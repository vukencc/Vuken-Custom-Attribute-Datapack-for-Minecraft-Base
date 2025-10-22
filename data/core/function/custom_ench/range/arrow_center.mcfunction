data merge entity @s {item:{id:potion,count:1,components:{potion_contents:{custom_effects:[{id:"unluck",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"bad_omen",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"night_vision",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"hunger",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"hero_of_the_village",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b}]}}},pickup:0b}
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,equipment:{saddle:{id:saddle,components:{enchantments:{"core:inter/arrow_center":1}},count:1}},data:{UUID:[0,0,0,0],starlit_damage:0.0d},Tags:["arrow_trigger"]}
execute store result score @s range_starlit run data get entity @p SelectedItem.components."minecraft:enchantments".core:range/starlit 3
execute if score @s range_starlit matches 1.. run tag @n[type=armor_stand,tag=arrow_trigger] add starlit_as
execute store result score @s stdTemp1 run function core:damage/range/calculation
scoreboard players operation @s range_starlit *= @s stdTemp1
execute store result entity @n[type=armor_stand,tag=arrow_trigger] data.starlit_damage double 0.0001 run scoreboard players get @s range_starlit
data modify entity @n[type=armor_stand,tag=arrow_trigger] data.UUID set from entity @p UUID
ride @n[type=armor_stand,tag=arrow_trigger] mount @s
#execute on origin at @s run function core:custom_ench/range/trig_center
#bad_omen.greed slowness.freeze night_vision.ring hero.sniper&blank null.starlit
execute store result score @p range_greed run data get entity @p SelectedItem.components."minecraft:enchantments"."core:range/greed"
execute store result score @p range_freeze run data get entity @p SelectedItem.components."minecraft:enchantments"."core:range/freeze"
execute store result score @p range_ring run data get entity @p SelectedItem.components."minecraft:enchantments"."core:range/ring"
execute store result score @p range_sniper_blank run data get entity @p SelectedItem.components."minecraft:enchantments"."core:range/sniper"
execute if score @p range_sniper_blank matches 0 store result score @p range_sniper_blank run data get entity @p SelectedItem.components."minecraft:enchantments"."core:range/point_blank"
execute if score @p range_greed matches 1.. run tag @s add greed_arrow
execute if score @p range_freeze matches 1.. run tag @s add freeze_arrow
execute if score @p range_ring matches 1.. run tag @s add ring_arrow
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[1].amplifier float 1.0 run scoreboard players get @p range_greed
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[2].amplifier float 1.0 run scoreboard players get @p range_ring
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[3].amplifier float 1.0 run scoreboard players get @p range_freeze
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[4].amplifier float 1.0 run scoreboard players get @p range_sniper_blank
#---------------------transform_effect_end----------------#
#--------------modified_arrow_damage----------------------#
execute store result entity @s damage double 0.000028 as @p run function core:damage/range/base